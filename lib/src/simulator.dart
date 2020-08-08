import "dart:math" show Random;
import "package:meta/meta.dart";
import "card.dart";
import "card_pair.dart";
import "hand.dart";
import "hand_range.dart";
import "rank.dart";
import "suit.dart";

///
@immutable
class Simulator {
  /// Creates
  Simulator({
    @required this.communityCards,
    @required this.handRanges,
  })  : assert(communityCards != null),
        assert(handRanges != null),
        assert(communityCards.length <= 5),
        precalculatedCardPairsForEachHandRange =
            handRanges.map((hr) => hr.cardPairCombinations).toList(),
        handRangeIndexOrderToPrioritize =
            List.generate(handRanges.length, (index) => index)..sort() {
    handRangeIndexOrderToPrioritize.sort((a, b) {
      final aCombinationLength =
          precalculatedCardPairsForEachHandRange[a].length;
      final bCombinationLength =
          precalculatedCardPairsForEachHandRange[b].length;

      if (aCombinationLength == 1) {
        return -1;
      }

      if (bCombinationLength == 1) {
        return 1;
      }

      if (aCombinationLength <= handRanges.length * 2 &&
          bCombinationLength <= handRanges.length * 2) {
        return aCombinationLength - bCombinationLength;
      }

      if (aCombinationLength <= handRanges.length * 2) {
        return -1;
      }

      if (bCombinationLength <= handRanges.length * 2) {
        return 1;
      }

      return 0;
    });
  }

  ///
  final Set<Card> communityCards;

  ///
  final List<HandRange> handRanges;

  @visibleForTesting
  final List<Set<CardPair>> precalculatedCardPairsForEachHandRange;

  @visibleForTesting
  final List<int> handRangeIndexOrderToPrioritize;

  /// Returns matchup evaluation result. Card pairs as player hands and community cards are randomly picked.
  Matchup evaluate() {
    final random = Random();

    final deck = {
      const Card(rank: Rank.ace, suit: Suit.spade),
      const Card(rank: Rank.deuce, suit: Suit.spade),
      const Card(rank: Rank.three, suit: Suit.spade),
      const Card(rank: Rank.four, suit: Suit.spade),
      const Card(rank: Rank.five, suit: Suit.spade),
      const Card(rank: Rank.six, suit: Suit.spade),
      const Card(rank: Rank.seven, suit: Suit.spade),
      const Card(rank: Rank.eight, suit: Suit.spade),
      const Card(rank: Rank.nine, suit: Suit.spade),
      const Card(rank: Rank.ten, suit: Suit.spade),
      const Card(rank: Rank.jack, suit: Suit.spade),
      const Card(rank: Rank.queen, suit: Suit.spade),
      const Card(rank: Rank.king, suit: Suit.spade),
      const Card(rank: Rank.ace, suit: Suit.heart),
      const Card(rank: Rank.deuce, suit: Suit.heart),
      const Card(rank: Rank.three, suit: Suit.heart),
      const Card(rank: Rank.four, suit: Suit.heart),
      const Card(rank: Rank.five, suit: Suit.heart),
      const Card(rank: Rank.six, suit: Suit.heart),
      const Card(rank: Rank.seven, suit: Suit.heart),
      const Card(rank: Rank.eight, suit: Suit.heart),
      const Card(rank: Rank.nine, suit: Suit.heart),
      const Card(rank: Rank.ten, suit: Suit.heart),
      const Card(rank: Rank.jack, suit: Suit.heart),
      const Card(rank: Rank.queen, suit: Suit.heart),
      const Card(rank: Rank.king, suit: Suit.heart),
      const Card(rank: Rank.ace, suit: Suit.diamond),
      const Card(rank: Rank.deuce, suit: Suit.diamond),
      const Card(rank: Rank.three, suit: Suit.diamond),
      const Card(rank: Rank.four, suit: Suit.diamond),
      const Card(rank: Rank.five, suit: Suit.diamond),
      const Card(rank: Rank.six, suit: Suit.diamond),
      const Card(rank: Rank.seven, suit: Suit.diamond),
      const Card(rank: Rank.eight, suit: Suit.diamond),
      const Card(rank: Rank.nine, suit: Suit.diamond),
      const Card(rank: Rank.ten, suit: Suit.diamond),
      const Card(rank: Rank.jack, suit: Suit.diamond),
      const Card(rank: Rank.queen, suit: Suit.diamond),
      const Card(rank: Rank.king, suit: Suit.diamond),
      const Card(rank: Rank.ace, suit: Suit.club),
      const Card(rank: Rank.deuce, suit: Suit.club),
      const Card(rank: Rank.three, suit: Suit.club),
      const Card(rank: Rank.four, suit: Suit.club),
      const Card(rank: Rank.five, suit: Suit.club),
      const Card(rank: Rank.six, suit: Suit.club),
      const Card(rank: Rank.seven, suit: Suit.club),
      const Card(rank: Rank.eight, suit: Suit.club),
      const Card(rank: Rank.nine, suit: Suit.club),
      const Card(rank: Rank.ten, suit: Suit.club),
      const Card(rank: Rank.jack, suit: Suit.club),
      const Card(rank: Rank.queen, suit: Suit.club),
      const Card(rank: Rank.king, suit: Suit.club),
    };

    deck.removeAll(this.communityCards);

    final finalCommunityCards = {...this.communityCards};
    final List<CardPair> chosenHoleCards = List(handRanges.length);

    for (final index in handRangeIndexOrderToPrioritize) {
      final cardPairCombinations =
          precalculatedCardPairsForEachHandRange[index];
      final availableCardPairCombinationIndexes =
          List.generate(cardPairCombinations.length, (index) => index);

      while (availableCardPairCombinationIndexes.isNotEmpty) {
        final indexOfIndexes =
            random.nextInt(availableCardPairCombinationIndexes.length);
        final combinationIndex =
            availableCardPairCombinationIndexes[indexOfIndexes];
        final cardPair = cardPairCombinations.elementAt(combinationIndex);

        availableCardPairCombinationIndexes.removeAt(indexOfIndexes);

        if (deck.contains(cardPair[0]) && deck.contains(cardPair[1])) {
          chosenHoleCards[index] = cardPair;
          deck.remove(cardPair[0]);
          deck.remove(cardPair[1]);

          break;
        }
      }

      if (chosenHoleCards[index] == null) {
        throw NoPossibleMatchupException();
      }
    }

    while (finalCommunityCards.length < 5) {
      final i = random.nextInt(deck.length);
      final card = deck.elementAt(i);

      finalCommunityCards.add(card);
      deck.remove(card);
    }

    return Matchup._(
      communityCards: finalCommunityCards,
      holeCards: chosenHoleCards,
    );
  }
}

/// An object representing a matchup.
class Matchup {
  Matchup._({@required this.communityCards, @required this.holeCards})
      : hands = holeCards
            .map((cardPair) =>
                Hand.bestFrom({...communityCards, cardPair[0], cardPair[1]}))
            .toList();

  /// The chosen/decided community cards for the matchup.
  final Set<Card> communityCards;

  /// The chosen hole cards for each player.
  final List<CardPair> holeCards;

  /// The players' made hand.
  final List<Hand> hands;

  /// The indexes of winners in the matchup.
  Set<int> get bestHandIndexes {
    Set<int> bestHandIndexes = {};
    int bestHandStrongness = -1;

    for (int index = 0; index < hands.length; ++index) {
      final hand = hands[index];

      if (hand.strongness > bestHandStrongness) {
        bestHandStrongness = hand.strongness;
        bestHandIndexes = {index};
      }

      if (hand.strongness == bestHandStrongness) {
        bestHandIndexes.add(index);
      }
    }

    return bestHandIndexes;
  }
}

class NoPossibleMatchupException implements Exception {
  const NoPossibleMatchupException();

  @override
  String toString() => "NoPossibleMatchupException";
}
