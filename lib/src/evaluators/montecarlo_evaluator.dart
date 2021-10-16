import "dart:collection";
import "dart:math";
import "../models/card.dart";
import "../models/card_set.dart";
import "../models/evaluation_result.dart";
import "../models/hand_range.dart";
import "../models/matchup.dart";
import "./evaluator.dart";

class MontecarloEvaluator
    with IterableMixin<EvaluationResult>
    implements Evaluator {
  MontecarloEvaluator({
    required Set<Card> communityCards,
    required this.players,
  }) : communityCards = communityCards is CardSet
            ? communityCards
            : CardSet(communityCards);

  final CardSet communityCards;

  final List<HandRange> players;

  Iterator<EvaluationResult> get iterator => _MontecarloEvaluationIterator(
        playerCardPairs: players.map((p) => p.toList()).toList(),
        initialDeck: CardSet.full..removeAll(communityCards),
        initialCommunityCards: communityCards,
      );

  @override
  int get length => -1;
}

class _MontecarloEvaluationIterator implements Iterator<EvaluationResult> {
  _MontecarloEvaluationIterator({
    required this.playerCardPairs,
    required this.initialDeck,
    required this.initialCommunityCards,
  })  : _random = Random(),
        _lastResult = null;

  final List<List<CardPair>> playerCardPairs;

  final CardSet initialDeck;

  final CardSet initialCommunityCards;

  final Random _random;

  EvaluationResult? _lastResult;

  @override
  EvaluationResult get current => _lastResult!;

  @override
  bool moveNext() {
    final chosenPlayerCardPairs = playerCardPairs
        .map((cps) => cps[_random.nextInt(cps.length)].toSet())
        .toList();

    Set<Card> deck = initialDeck.toSet();
    Set<Card> communityCards = initialCommunityCards.toSet();
    bool isPossible = true;

    for (final cardPair in chosenPlayerCardPairs) {
      if (!deck.contains(cardPair.first) || !deck.contains(cardPair.last)) {
        isPossible = false;

        break;
      }

      deck.removeAll(cardPair);
    }

    if (isPossible) {
      for (int i = communityCards.length; i < 5;) {
        final card = Card.fromInt(pow(2, _random.nextInt(52)) as int);

        if (deck.contains(card)) {
          deck.remove(card);
          communityCards.add(card);

          i += 1;
        }
      }

      final matchup = Matchup.showdown(
        communityCards: communityCards,
        playerCardPairs: chosenPlayerCardPairs,
      );

      _lastResult = EvaluationResult.fromMatchup(matchup);
    } else {
      // _lastResult =
      //     EvaluationResult.empty(playerLength: chosenPlayerCardPairs.length);
      moveNext();
    }

    return true;
  }
}
