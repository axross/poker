import "dart:math";
import "package:meta/meta.dart";
import "./rank.dart";
import "./suit.dart";

/// A piece of playing cards.
///
/// ```
/// final card = Card(Rank.ace, Suit.spade);
///
/// card.rank;  // => Rank.ace
/// card.suit;  // => Suit.spade
///
/// card.toString();  // => "As"
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
/// cards;  // [
///         //   Card(Rank.ace, Suit.spade),
///         //   Card(Rank.queen, Suit.heart),
///         //   Card(Rank.jack, Suit.diamond),
///         //   Card(Rank.king, Suit.club)
///         // ]
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
  Card(this.rank, this.suit)
      : _intValue = pow(2, rank.index + suit.index * 13).toInt();

  /// Creates a [Card] from a hash int value.
  @protected
  Card.fromInt(int value)
      : rank = Rank.values[(log(value) / log(2)).floor() % 13],
        suit = Suit.values[((log(value) / log(2)) / 13).floor()],
        _intValue = value;

  /// Creates a [Card] by a 2-character-length [String].
  ///
  /// ```dart
  /// Card.fromString("As");  // => Card(Rank.ace, Suit.spade)
  /// Card.fromString("2h");  // => Card(Rank.deuce, Suit.heart)
  /// Card.fromString("3d");  // => Card(Rank.trey, Suit.diamond)
  /// Card.fromString("Kc");  // => Card(Rank.king, Suit.club)
  /// ```
  factory Card.fromString(String value) {
    if (!RegExp(r"^[A23456789TJQK][shdc]$").hasMatch(value)) {
      throw CardParseFailure(value);
    }

    return Card(_rankByString[value[0]]!, _suitByString[value[1]]!);
  }

  /// The [Rank] of this card.
  final Rank rank;

  /// The [Suit] of this card.
  final Suit suit;

  final int _intValue;

  /// Returns the hash int value of this Card.
  int toInt() => _intValue;

  @override
  int compareTo(dynamic other) {
    if (other is! Card) return 0;

    if (suit.index != other.suit) {
      return suit.index - other.suit.index;
    }

    return rank.index - other.rank.index;
  }

  /// Returns a string representation. Ace of spade is `"As"`, 10 of heart is `"Th"` and 2 of diamond is `"2d"`.
  @override
  String toString() => "${rank.char}${suit.char}";

  @override
  int get hashCode => toInt();

  @override
  bool operator ==(Object other) =>
      other is Card && other.rank == rank && other.suit == suit;
}

class CardParseFailure implements Exception {
  CardParseFailure(this.value);

  final String value;

  @override
  String toString() {
    return "CardParseFailure: $value is not a valid string.";
  }
}

const _rankByString = {
  "A": Rank.ace,
  "K": Rank.king,
  "Q": Rank.queen,
  "J": Rank.jack,
  "T": Rank.ten,
  "9": Rank.nine,
  "8": Rank.eight,
  "7": Rank.seven,
  "6": Rank.six,
  "5": Rank.five,
  "4": Rank.four,
  "3": Rank.trey,
  "2": Rank.deuce,
};

const _suitByString = {
  "s": Suit.spade,
  "h": Suit.heart,
  "d": Suit.diamond,
  "c": Suit.club,
};
