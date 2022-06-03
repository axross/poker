import '../models/immutable_card_set.dart';
import '../models/hand_range.dart';
import '../models/made_hand.dart';

/// An iterable object that evaluates pot equity for each player in the given situation.
///
/// There are two options for [Evaluator]s.
///
/// - [ExhaustiveEvaluator] - It evaluates every possible situation one by one. Which is great when you want to get the 100% accurate result.
/// - [MontecarloEvaluator] - It evaluates situations by montecarlo simulation.
abstract class Evaluator implements Iterable<Matchup> {
  /// The community cards in the situation. Its length must be 0 <= length <= 5.
  ImmutableCardSet get communityCards;

  /// The players' hand range.
  List<HandRange> get players;
}

/// An exception that expresses there is no possible combination to evaluate.
///
/// The major reasons this error causes are:
///
/// - Some of community cards or player hand ranges contains the exact same card.
/// - There are pretty small combination that [MontecarloEvaluator] can find. Because [MontecarloEvaluator] stops its iteration when it needs to re-try a lot of times.
class NoPossibleCombinationException implements Exception {
  NoPossibleCombinationException();

  final String message = 'There is no possible combination.';
}

/// A result of evaluating a situation.
///
/// You will get [Matchup] by [Evaluator]s iteration.
class Matchup {
  Matchup._({
    required this.communityCards,
    required this.playerCardPairs,
    required this.hands,
    required this.wonPlayerIndexes,
  });

  /// Creates a [Matchup] by evaluating a situation.
  ///
  /// Normally you don't need to call this constructor.
  factory Matchup.showdown({
    required List<CardPair> playerCardPairs,
    required ImmutableCardSet communityCards,
  }) {
    assert(playerCardPairs.isNotEmpty);
    assert(communityCards.length == 5);

    final hands = <MadeHand>[];
    final wonPlayerIndexes = <int>{};
    int maxPower = -1;

    for (int i = 0; i < playerCardPairs.length; ++i) {
      final madeHand = MadeHand.best(
        playerCardPairs[i].addedAll(communityCards),
      );

      hands.add(madeHand);

      if (madeHand.power >= maxPower) {
        if (madeHand.power > maxPower) {
          wonPlayerIndexes.clear();

          maxPower = madeHand.power;
        }

        wonPlayerIndexes.add(i);
      }
    }

    return Matchup._(
      communityCards: communityCards,
      playerCardPairs: playerCardPairs,
      hands: hands,
      wonPlayerIndexes: wonPlayerIndexes,
    );
  }

  /// The community cards that are used for the situation.
  final ImmutableCardSet communityCards;

  /// The player card pairs that are used for the situation.
  final List<CardPair> playerCardPairs;

  /// The evaluated [MadeHand]s for each player.
  final List<MadeHand> hands;

  /// The index integers that won the pot in the situation.
  final Set<int> wonPlayerIndexes;
}
