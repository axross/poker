import "dart:collection";
import "dart:math";
import "../models/card.dart";
import '../models/immutable_card_set.dart';
import "../models/hand_range.dart";
import "./evaluator.dart";

/// An iterable object that evaluates pot equity for each player in the given situation. It iterates with evaluating situations by montecarlo simulation.
///
/// By default it iterates infinitely ([MontecarloEvaluator.length] is always `-1`) so use something (e.g. `.take(10000)`) to limit iteration.
///
/// ```dart
/// final evaluator = MontecarloEvaluator(
///   communityCards: ImmutableCardSet.parse("3c6dTs"),
///   players = [
///     HandRange.parse("As3h"),
///     HandRange.parse("8d8h"),
///     HandRange.parse("AQs-ATsAKo-AJo44+"),
///   ],
/// );
///
/// let wons = [0, 0, 0];
///
/// for (final matchup in evaluator.take(100000)) {
///   for (final i in matchup.wonPlayerIndexes) {
///     wons[i] += 1;
///   }
/// }
///
/// print(wins);  // => [15928, 44819, 40103]
/// ```
class MontecarloEvaluator with IterableMixin<Matchup> implements Evaluator {
  MontecarloEvaluator({
    required this.communityCards,
    required this.players,
  })  : assert(communityCards.length <= 5),
        assert(players.length >= 2);

  final ImmutableCardSet communityCards;

  final List<HandRange> players;

  Iterator<Matchup> get iterator => _MontecarloEvaluationIterator(
        communityCards: communityCards,
        players: players,
      );

  @override
  int get length => -1;
}

class _MontecarloEvaluationIterator implements Iterator<Matchup> {
  _MontecarloEvaluationIterator({
    required ImmutableCardSet communityCards,
    required List<HandRange> players,
  })  : _playerCardPairs = players.map((p) => p.toList()).toList(),
        _initialDeck = ImmutableCardSet.full().removedAll(communityCards),
        _initialCommunityCards = communityCards;

  final List<List<CardPair>> _playerCardPairs;

  final ImmutableCardSet _initialDeck;

  final ImmutableCardSet _initialCommunityCards;

  final Random _random = Random();

  Matchup? _lastResult;

  int _retryCount = 0;

  @override
  Matchup get current => _lastResult!;

  @override
  bool moveNext() {
    ImmutableCardSet deck = _initialDeck;
    ImmutableCardSet communityCards = _initialCommunityCards;
    final playerCardPairs =
        _playerCardPairs.map((hr) => hr[_random.nextInt(hr.length)]).toList();
    bool isPossible = true;

    for (final cardPair in playerCardPairs) {
      if (!deck.containsAll(cardPair)) {
        isPossible = false;

        break;
      }

      deck = deck.removedAll(cardPair);
    }

    if (!isPossible) {
      _retryCount += 1;

      if (_retryCount >= 100) {
        throw NoPossibleCombinationException();
      }

      return moveNext();
    }

    _retryCount = 0;

    for (int i = communityCards.length; i < 5;) {
      final card = Card.fromIndex(pow(2, _random.nextInt(52)) as int);

      if (deck.contains(card)) {
        deck = deck.removed(card);
        communityCards = communityCards.added(card);

        i += 1;
      }
    }

    _lastResult = Matchup.showdown(
      playerCardPairs: playerCardPairs,
      communityCards: communityCards,
    );

    return true;
  }
}
