import "dart:collection";
import "../models/card.dart";
import "../models/card_set.dart";
import "../models/evaluation_result.dart";
import "../models/hand_range.dart";
import "../models/matchup.dart";
import "./evaluator.dart";

class ExhaustiveEvaluator
    with IterableMixin<EvaluationResult>
    implements Evaluator {
  ExhaustiveEvaluator({
    required Set<Card> communityCards,
    required this.players,
  }) : communityCards = communityCards is CardSet
            ? communityCards
            : CardSet(communityCards);

  final CardSet communityCards;

  final List<HandRange> players;

  Iterator<EvaluationResult> get iterator =>
      _ExhaustiveEvaluationIterator(original: this);
}

class _ExhaustiveEvaluationIterator implements Iterator<EvaluationResult> {
  _ExhaustiveEvaluationIterator({required ExhaustiveEvaluator original})
      : _playerCardPairs = original.players.map((p) => p.toList()).toList(),
        _stack = [
          _ExhaustiveEvaluationNode(
            deck: CardSet.full..removeAll(original.communityCards),
            playerCardPairs: [],
            communityCards: original.communityCards,
          ),
        ],
        _lastResult = null;

  final List<List<CardPair>> _playerCardPairs;

  final List<_ExhaustiveEvaluationNode> _stack;

  EvaluationResult? _lastResult;

  @override
  EvaluationResult get current => _lastResult!;

  @override
  bool moveNext() {
    if (_stack.isEmpty) return false;

    final node = _stack.removeLast();

    if (node.playerCardPairs.length < _playerCardPairs.length) {
      final nextPlayerIndex = node.playerCardPairs.length;

      for (final playerCardPair in _playerCardPairs[nextPlayerIndex]) {
        if (!node.deck.containsAll(playerCardPair)) continue;

        _stack.add(_ExhaustiveEvaluationNode(
          deck: node.deck.toSet()..removeAll(playerCardPair),
          playerCardPairs: [...node.playerCardPairs, CardSet(playerCardPair)],
          communityCards: node.communityCards,
        ));
      }

      // continue;
      return moveNext();
    }

    if (node.communityCards.length < 5) {
      for (final card in node.deck) {
        _stack.add(_ExhaustiveEvaluationNode(
          deck: node.deck.difference(CardSet.single(card)),
          playerCardPairs: node.playerCardPairs,
          communityCards: node.communityCards.toSet()..add(card),
        ));
      }

      // continue;
      return moveNext();
    }

    final matchup = Matchup.showdown(
      communityCards: node.communityCards,
      playerCardPairs: node.playerCardPairs,
    );

    _lastResult = EvaluationResult.fromMatchup(matchup);

    return _lastResult != null;
  }
}

class _ExhaustiveEvaluationNode {
  _ExhaustiveEvaluationNode({
    required this.deck,
    required this.playerCardPairs,
    required this.communityCards,
  });

  final Set<Card> deck;
  final List<Set<Card>> playerCardPairs;
  final Set<Card> communityCards;
}
