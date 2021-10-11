import "package:meta/meta.dart";
import "./card.dart";
import "./made_hand.dart";

/**
 *
 */
@immutable
class Matchup {
  Matchup._({
    required this.communityCards,
    required this.playerCardPairs,
    required this.playerMadeHands,
  });

  factory Matchup.showdown({
    required Set<Card> communityCards,
    required List<Set<Card>> playerCardPairs,
  }) {
    final List<MadeHand> playerMadeHands = [];

    for (final playerCardPair in playerCardPairs) {
      final madeHand =
          MadeHand.best(playerCardPair.toSet()..addAll(communityCards));

      playerMadeHands.add(madeHand);
    }

    return Matchup._(
      communityCards: communityCards,
      playerCardPairs: playerCardPairs,
      playerMadeHands: playerMadeHands,
    );
  }

  final Set<Card> communityCards;

  final List<Set<Card>> playerCardPairs;

  final List<MadeHand> playerMadeHands;
}
