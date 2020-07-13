import "card.dart" show Card;

/// An object representing a pair of playing cards.
class CardPair {
  /// Creates a card pair that is made of the given two cards.
  const CardPair(this._a, this._b);

  final Card _a;

  final Card _b;

  @override
  String toString() => "${_a}${_b}";

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + _a.hashCode;
    result = 37 * result + _b.hashCode;

    return result;
  }

  /// Returns one of card by the given index.
  operator [](int index) {
    assert(index == 0 || index == 1, "index should 0 or 1.");

    if (index == 0) return _a;
    if (index == 1) return _b;
  }

  @override
  operator ==(Object other) =>
      other is CardPair && other._a == _a && other._b == _b;
}
