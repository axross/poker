import "dart:collection" show IterableMixin;
import "package:meta/meta.dart";
import "./card.dart" show Card;

/// An object representing a pair of playing cards.
@immutable
class CardPair with IterableMixin<Card> {
  /// Creates a card pair that is made of the given two cards.
  CardPair(Card a, Card b)
      : assert(a != null),
        assert(b != null),
        assert(a != b),
        _a = a.compareTo(b) < 0 ? a : b,
        _b = a.compareTo(b) < 0 ? b : a;

  final Card _a;

  final Card _b;

  @override
  Iterator<Card> get iterator => [_a, _b].iterator;

  @override
  String toString() => "CardPair(${_a.chars}, ${_b.chars})";

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + (_a < _b ? _a.hashCode : _b.hashCode);
    result = 37 * result + (_a < _b ? _b.hashCode : _a.hashCode);

    return result;
  }

  /// Returns one of card by the given index.
  Card operator [](int index) {
    assert(index == 0 || index == 1, "index should 0 or 1.");

    return index == 0 ? _a : _b;
  }

  @override
  operator ==(Object other) =>
      other is CardPair && other._a == _a && other._b == _b;
}
