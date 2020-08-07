import "package:meta/meta.dart";
import "card.dart";
import "hand_range.dart";
import "rank.dart";
import "suit.dart";

/// A pair of [Card]s.
@immutable
class CardPair implements HandRangeComponent {
  /// Creates a [CardPair] by the given two [Card]s.
  const CardPair(this._a, this._b)
      : assert(_a != null),
        assert(_b != null),
        assert(_a != _b);

  /// Creates a [CardPair] from a string representation such like `"AsKh"`.
  factory CardPair.fromString(String value) {
    assert(value.length == 4);

    return CardPair(
      Card(rank: Rank.fromChar(value[0]), suit: Suit.fromChar(value[1])),
      Card(rank: Rank.fromChar(value[2]), suit: Suit.fromChar(value[3])),
    );
  }

  final Card _a;

  final Card _b;

  Card get first => _a.compareTo(_b) < 0 ? _a : _b;

  Card get last => _a.compareTo(_b) < 0 ? _b : _a;

  /// Returns a string representation such like `"AsKh"`.
  @override
  String toString() => "${_a}${_b}";

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + first.hashCode;
    result = 37 * result + last.hashCode;

    return result;
  }

  @override
  toCardPairs() => {this};

  /// Returns one of [Card]s by the given index.
  Card operator [](int index) {
    assert(index == 0 || index == 1, "index should 0 or 1.");

    return index == 0 ? first : last;
  }

  @override
  operator ==(Object other) =>
      other is CardPair && other.first == first && other.last == last;
}
