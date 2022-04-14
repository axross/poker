import "dart:math";
import "package:meta/meta.dart";
import "./rank.dart";
import "./suit.dart";

/// A piece of playing cards.
///
/// ```
/// final card = Card(Rank.ace, Suit.spade);
///
/// assert(card.rank == Rank.ace);
/// assert(card.suit == Suit.spade);
///
/// assert(card.toString() == "As");
/// ```
///
/// Since Card implements [Comparable], you can sort a list of Cards in order.
///
/// ```
/// const cards = [
///   Card(Rank.ace, Suit.spade),
///   Card(Rank.king, Suit.club),
///   Card(Rank.queen, Suit.heart),
///   Card(Rank.jack, Suit.diamond),
/// ];
///
/// cards.sort();
///
/// print(cards);  // [
///                //   Card(Rank.ace, Suit.spade),
///                //   Card(Rank.queen, Suit.heart),
///                //   Card(Rank.jack, Suit.diamond),
///                //   Card(Rank.king, Suit.club)
///                // ]
/// ```
@immutable
class Card implements Comparable {
  /// Creates a [Card] from Rank and Suit.
  ///
  /// ```dart
  /// final aceOfSpade = Card(Rank.ace, Suit.spade);
  /// final deuceOfHeart = Card(Rank.deuce, Suit.heart);
  /// final TreyOfDiamond = Card(Rank.trey, Suit.diamond);
  /// final kingOfClub = Card(Rank.king, Suit.club);
  /// ```
  Card({required this.rank, required this.suit})
      : index = pow(2, rank.index + suit.index * 13).toInt();

  /// Creates a [Card] from a hash int value.
  @protected
  Card.fromIndex(int index)
      : rank = Rank.fromIndex((log(index) / log(2)).floor() % 13),
        suit = Suit.fromIndex(((log(index) / log(2)) / 13).floor()),
        index = index;

  /// Creates a [Card] by a 2-character-length [String].
  ///
  /// ```dart
  /// Card.fromString("As");  // => Card(Rank.ace, Suit.spade)
  /// Card.fromString("2h");  // => Card(Rank.deuce, Suit.heart)
  /// Card.fromString("3d");  // => Card(Rank.trey, Suit.diamond)
  /// Card.fromString("Kc");  // => Card(Rank.king, Suit.club)
  /// ```
  factory Card.parse(String value) {
    if (!RegExp(r"^[A23456789TJQK][shdc]$").hasMatch(value)) {
      throw CardParseFailure(value);
    }

    return Card(rank: Rank.parse(value[0]), suit: Suit.parse(value[1]));
  }

  /// The [Rank] of this card.
  final Rank rank;

  /// The [Suit] of this card.
  final Suit suit;

  /// Returns the hash integer value of this card.
  final int index;

  @override
  int compareTo(dynamic other) {
    if (other is! Card) return 0;

    if (suit.index != other.suit) {
      return suit.index - other.suit.index;
    }

    return rank.index - other.rank.index;
  }

  /// Returns a string representation. Ace of spade is `"As"`, 10 of heart is `"Th"` and deuce of diamond is `"2d"`.
  @override
  String toString() => "${rank}${suit}";

  @override
  int get hashCode => index;

  @override
  bool operator ==(Object other) => other is Card && other.index == index;
}

/// An exception that expresses `Card.parse()` failed due to the given String was invalid.
class CardParseFailure implements Exception {
  CardParseFailure(this.value);

  final String value;

  @override
  String toString() {
    return "CardParseFailure: $value is not a valid string.";
  }
}
