import "dart:collection";
import '../models/immutable_card_set.dart';
import "../models/hand_range.dart";
import "./evaluator.dart";

/// An iterable object that evaluates pot equity for each player in the given situation. It iterates with evaluating every possible situation one by one. Which is great when you want to get the 100% accurate result.
///
/// ```dart
/// final evaluator = ExhaustiveEvaluator(
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
/// for (final matchup in evaluator) {
///   for (final i in matchup.wonPlayerIndexes) {
///     wons[i] += 1;
///   }
/// }
///
/// print(wons);  // => [25412, 71028, 63894]
/// ```
class ExhaustiveEvaluator with IterableMixin<Matchup> implements Evaluator {
  ExhaustiveEvaluator({
    required this.communityCards,
    required this.players,
  })  : assert(communityCards.length <= 5),
        assert(players.length >= 2);

  @override
  final ImmutableCardSet communityCards;

  @override
  final List<HandRange> players;

  @override
  Iterator<Matchup> get iterator => _ExhaustiveEvaluationIterator(
        communityCards: communityCards,
        players: players,
      );
}

class _ExhaustiveEvaluationIterator implements Iterator<Matchup> {
  _ExhaustiveEvaluationIterator({
    required ImmutableCardSet communityCards,
    required List<HandRange> players,
  })  : _playerCardPairs = players.map((p) => p.toList()).toList(),
        _stack = [
          _ExhaustiveEvaluationNode(
            deck: ImmutableCardSet.full().removedAll(communityCards),
            playerCardPairs: [],
            communityCards: communityCards,
          ),
        ],
        _lastMatchup = null;

  final List<List<CardPair>> _playerCardPairs;

  final List<_ExhaustiveEvaluationNode> _stack;

  Matchup? _lastMatchup;

  @override
  Matchup get current => _lastMatchup!;

  @override
  bool moveNext() {
    if (_stack.isEmpty) {
      if (_lastMatchup == null) {
        throw NoPossibleCombinationException();
      }

      _lastMatchup = null;

      return false;
    }

    final node = _stack.removeLast();

    if (node.playerCardPairs.length < _playerCardPairs.length) {
      final nextPlayerIndex = node.playerCardPairs.length;

      for (final playerCardPair in _playerCardPairs[nextPlayerIndex]) {
        if (!node.deck.containsAll(playerCardPair)) continue;

        _stack.add(_ExhaustiveEvaluationNode(
          deck: node.deck.removedAll(playerCardPair),
          playerCardPairs: node.playerCardPairs.toList()..add(playerCardPair),
          communityCards: node.communityCards,
        ));
      }

      return moveNext();
    }

    if (node.communityCards.length < 5) {
      for (final card in node.deck) {
        _stack.add(_ExhaustiveEvaluationNode(
          deck: node.deck.removed(card),
          playerCardPairs: node.playerCardPairs,
          communityCards: node.communityCards.added(card),
        ));
      }

      return moveNext();
    }

    _lastMatchup = Matchup.showdown(
      playerCardPairs: node.playerCardPairs,
      communityCards: node.communityCards,
    );

    return true;
  }
}

class _ExhaustiveEvaluationNode {
  _ExhaustiveEvaluationNode({
    required this.deck,
    required this.playerCardPairs,
    required this.communityCards,
  });

  final ImmutableCardSet deck;
  final List<CardPair> playerCardPairs;
  final ImmutableCardSet communityCards;
}
