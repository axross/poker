import "dart:collection";
import 'package:meta/meta.dart';
import "./card.dart";

/// An efficient equivalent expression to `Set<Card>`.
///
/// ImmutableCardSet is more efficient type when you want to express a `Set<Card>` value because ImmutableCardSet internally holds elements in a sum of int values. You can do any operation that `Set<Card>` has.
///
/// ```dart
/// final cardSet = ImmutableCardSet({ Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart) });
///
/// cardSet.contains(Card(Rank.ace, Suit.spade));  // => true
/// cardSet.containsAll([Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart)]);  // => true
/// cardSet.containsAll([Card(Rank.ace, Suit.spade), Card(Rank.king, Suit.club)]);  // => false
/// ```
///
/// Since ImmutableCardSet holds elements as sum of int, you can compare two different ImmutableCardSet by `==` without performance concern.
///
/// ```dart
/// ImmutableCardSet({ Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart) }) == Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart);  // => true
/// ImmutableCardSet({ Card(Rank.ace, Suit.spade), Card(Rank.queen, Suit.heart) }) == Card(Rank.king, Suit.club), Card(Rank.jack, Suit.diamond);  // => false
/// ```
@immutable
class ImmutableCardSet with IterableMixin<Card> {
  /// Creates a ImmutableCardSet from a hash [int] value.
  const ImmutableCardSet(this.indexUnion);

  /// An empty ImmutableCardSet.
  ImmutableCardSet.empty() : indexUnion = 0;

  /// A full-deck ImmutableCardSet.
  ImmutableCardSet.full() : indexUnion = 4503599627370495;

  /// Creates a ImmutableCardSet from a `Iterable<Card>`.
  ImmutableCardSet.from(Iterable<Card> cards)
      : indexUnion = cards.fold<int>(0, (s, card) => s | card.index);

  /// Parses a [String] to create a ImmutableCardSet.
  ///
  /// This method expects a String sequence of a String for [Card.parse()].
  factory ImmutableCardSet.parse(String value) {
    int indexUnion = 0;

    for (int i = 0; i < value.length; i += 2) {
      try {
        indexUnion |= Card.parse(value.substring(i, i + 2)).index;
      } catch (_) {
        throw ImmutableCardSetParseFailure(value);
      }
    }

    return ImmutableCardSet(indexUnion);
  }

  final int indexUnion;

  @override
  int get length {
    int v = indexUnion;

    v = v - ((v >> 1) & 0x5555555555555555);
    v = (v & 0x3333333333333333) + ((v >> 2) & 0x3333333333333333);
    v = (v + (v >> 4)) & 0x0f0f0f0f0f0f0f0f;
    v = v + (v >> 8);
    v = v + (v >> 16);
    v = v + (v >> 32);

    return v & 0x0000007f;
  }

  @override
  bool contains(Object? element) {
    if (element is ImmutableCardSet) {
      return (indexUnion & element.indexUnion == element.indexUnion);
    }

    if (element is Card) {
      return (indexUnion & element.index == element.index);
    }

    throw UnsupportedError("");
  }

  bool containsAll(ImmutableCardSet other) =>
      (indexUnion & other.indexUnion == other.indexUnion);

  ImmutableCardSet addedAll(ImmutableCardSet other) =>
      ImmutableCardSet(indexUnion | other.indexUnion);

  ImmutableCardSet added(Card card) =>
      ImmutableCardSet(indexUnion | card.index);

  ImmutableCardSet removedAll(ImmutableCardSet other) =>
      ImmutableCardSet(indexUnion & ~other.indexUnion);

  ImmutableCardSet removed(Card card) =>
      ImmutableCardSet(indexUnion & ~card.index);

  @override
  Iterator<Card> get iterator => _CardSetIterator(indexUnion);

  @override
  int get hashCode => indexUnion;

  @override
  operator ==(Object other) =>
      other is ImmutableCardSet && indexUnion == other.indexUnion;
}

///

class _CardSetIterator implements Iterator<Card> {
  _CardSetIterator(this._remaining) : _current = null;

  int _remaining;

  Card? _current;

  @override
  Card get current => _current!;

  @override
  bool moveNext() {
    if (_remaining > 0) {
      _current = Card.fromIndex(_remaining & -_remaining);
      _remaining = _remaining & (_remaining - 1);

      return true;
    }

    return false;
  }
}

class ImmutableCardSetParseFailure implements Exception {
  ImmutableCardSetParseFailure(this.value);

  final String value;

  @override
  String toString() {
    return "CardSetParseFailure: $value is not a valid string.";
  }
}

class CardPair extends ImmutableCardSet {
  CardPair(this.a, this.b) : super(a.index | b.index);

  factory CardPair.parse(String value) {
    assert(value.length == 4);

    return CardPair(
      Card.parse(value.substring(0, 2)),
      Card.parse(value.substring(2, 4)),
    );
  }

  final Card a;

  final Card b;

  String toSortedString() {
    if (a.rank.powerIndex < b.rank.powerIndex) {
      return "$a$b";
    }

    if (a.rank.powerIndex > b.rank.powerIndex) {
      return "$b$a";
    }

    if (b.suit.index < a.suit.index) {
      return "$b$a";
    }

    return "$a$b";
  }
}
