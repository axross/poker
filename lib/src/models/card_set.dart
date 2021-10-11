import "dart:collection";
import "./card.dart";

/// An efficient equivalent expression to `Set<Card>`.
///
/// CardSet is more efficient type when you want to express a `Set<Card>` value because CardSet internally holds elements in a sum of int values. You can do any operation that `Set<Card>` has.
///
/// ```dart
/// final cardSet = CardSet({ Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart) });
///
/// cardSet.contains(Card(Rank.ace, Suit.spade));  // => true
/// cardSet.containsAll([Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart)]);  // => true
/// cardSet.containsAll([Card(Rank.ace, Suit.spade), Card(Rank.king, Suit.club)]);  // => false
/// ```
///
/// Since CardSet holds elements as sum of int, you can compare two different CardSet by `==` without performance concern.
///
/// ```dart
/// CardSet({ Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart) }) == Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart);  // => true
/// CardSet({ Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart) }) == Card(Rank.king, Suit.club), Card(Rank.jack, Suit.diamond);  // => false
/// ```
class CardSet with SetMixin<Card> {
  /// An empty CardSet.
  static CardSet get empty => CardSet.fromInt(0);

  /// A full-deck CardSet.
  static CardSet get full => CardSet.fromInt(4503599627370495);

  /// Creates a CardSet from a `Iterable<Card>`.
  CardSet(Iterable<Card> cards)
      : _value = cards.fold<int>(0, (v, card) => v + card.toInt());

  /// Creates a CardSet that has a card.
  CardSet.single(Card card) : _value = card.toInt();

  /// Creates a CardSet from a hash [int] value.
  CardSet.fromInt(int value) : _value = value;

  /// Parses a [String] to create a CardSet.
  ///
  /// This method expects a String sequence of a String for [Card.fromString()].
  factory CardSet.fromString(String string) {
    CardSet cards = CardSet.empty;

    for (int i = 0; i < string.length; i += 2) {
      try {
        cards.add(Card.fromString(string.substring(i, i + 2)));
      } catch (_) {
        throw CardSetParseFailure(string);
      }
    }

    return cards;
  }

  int _value;

  @override
  bool add(Card value) {
    final hasValue = contains(value);

    _value |= value.toInt();

    return !hasValue;
  }

  @override
  bool contains(Object? element) =>
      element is Card && (_value & element.toInt() == element.toInt());

  @override
  Card? lookup(Object? element) =>
      element is Card && contains(element) ? element : null;

  @override
  bool remove(Object? value) {
    if (value is Card) {
      final hasValue = contains(value);

      _value = _value & ~value.toInt();

      return !hasValue;
    }

    return false;
  }

  @override
  Iterator<Card> get iterator => _CardSetIterator(this);

  @override
  int get length {
    // int v = _value;

    // v = (v & 0x55555555) + (v >> 1 & 0x55555555);
    // v = (v & 0x33333333) + (v >> 2 & 0x33333333);
    // v = (v & 0x0f0f0f0f) + (v >> 4 & 0x0f0f0f0f);
    // v = (v & 0x00ff00ff) + (v >> 8 & 0x00ff00ff);
    // v = (v & 0x0000ffff) + (v >> 16 & 0x0000ffff);

    // return v;

    int v = _value;

    v = v - ((v >> 1) & 0x5555555555555555);
    v = (v & 0x3333333333333333) + ((v >> 2) & 0x3333333333333333);
    v = (v + (v >> 4)) & 0x0f0f0f0f0f0f0f0f;
    v = v + (v >> 8);
    v = v + (v >> 16);
    v = v + (v >> 32);

    return v & 0x0000007f;
  }

  Set<Card> toSet() => CardSet.fromInt(_value);

  // /// Whether this CardSet contains all the cards in the given CardSet or not.
  // bool containsAll(Object? other) =>
  //     other is CardSet && intersection(other) == other;

  // /// Returns an union CardSet of this and the given CardSet.
  // CardSet union(CardSet other) => CardSet.fromInt(toInt() | other.toInt());

  // /// Returns an difference CardSet of this and the given CardSet.
  // CardSet difference(CardSet other) =>
  //     CardSet.fromInt(toInt() & ~other.toInt());

  // /// Returns an intersection CardSet of this and the given CardSet.
  // CardSet intersection(CardSet other) =>
  //     CardSet.fromInt(toInt() & other.toInt());

  // /// Returns the hash int value of this CardSet.
  // int toInt() => _value;

  @override
  int get hashCode => _value;

  @override
  operator ==(Object other) => other is CardSet && _value == other._value;
}

class _CardSetIterator implements Iterator<Card> {
  _CardSetIterator(this.original)
      : _remaining = original._value,
        _current = null;

  final CardSet original;

  int _remaining;

  Card? _current;

  @override
  Card get current => _current!;

  @override
  bool moveNext() {
    if (_remaining > 0) {
      // print(_remaining & -_remaining);
      // print(Card.fromInt(_remaining & -_remaining));

      _current = Card.fromInt(_remaining & -_remaining);
      _remaining = _remaining & (_remaining - 1);

      return true;
    }

    return false;
  }
}

class CardSetParseFailure implements Exception {
  CardSetParseFailure(this.value);

  final String value;

  @override
  String toString() {
    return "CardSetParseFailure: $value is not a valid string.";
  }
}
