import "package:meta/meta.dart";

/// A piece of playing cards.
@immutable
class Card implements Comparable {
  /// Creates a card by its rank and suit.
  const Card({@required this.rank, @required this.suit})
      : assert(rank != null),
        assert(suit != null);

  /// Creates a card by a 2-character-length string (e.g. `"As"`, `"Th"` and `"2d"`).
  Card.fromString(String value)
      : assert(value.length == 2),
        rank = Rank.fromChar(value[0]),
        suit = Suit.fromChar(value[1]);

  /// The rank part of the objct.
  final Rank rank;

  /// The suit part of the objct.
  final Suit suit;

  /// Returns a string representation. Ace of spade is `"As"`, 10 of heart is `"Th"` and 2 of diamond is `"2d"`.
  String get chars => "${rank.char}${suit.char}";

  @override
  String toString() => "Card(${rank.char}${suit.char})";

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + rank.hashCode;
    result = 37 * result + suit.hashCode;

    return result;
  }

  @override
  int compareTo(other) {
    if (other is Card) {
      final rankComparison = rank.compareTo(other.rank);

      if (rankComparison == 0) {
        return suit.compareTo(other.suit);
      }

      return rankComparison;
    }

    return -1;
  }

  @override
  bool operator ==(dynamic other) =>
      other is Card && other.rank == rank && other.suit == suit;

  bool operator <(Card other) =>
      other.rank.index > rank.index || other.suit.index > suit.index;
}

/// Rank part of playing card.
abstract class Rank implements Comparable {
  static const ace = _Rank(0, "A");

  static const deuce = _Rank(1, "2");

  static const three = _Rank(2, "3");

  static const four = _Rank(3, "4");

  static const five = _Rank(4, "5");

  static const six = _Rank(5, "6");

  static const seven = _Rank(6, "7");

  static const eight = _Rank(7, "8");

  static const nine = _Rank(8, "9");

  static const ten = _Rank(9, "T");

  static const jack = _Rank(10, "J");

  static const queen = _Rank(11, "Q");

  static const king = _Rank(12, "K");

  static const values = [
    Rank.ace,
    Rank.deuce,
    Rank.three,
    Rank.four,
    Rank.five,
    Rank.six,
    Rank.seven,
    Rank.eight,
    Rank.nine,
    Rank.ten,
    Rank.jack,
    Rank.queen,
    Rank.king,
  ];

  factory Rank.fromChar(String char) {
    switch (char) {
      case "A":
        return Rank.ace;
      case "2":
        return Rank.deuce;
      case "3":
        return Rank.three;
      case "4":
        return Rank.four;
      case "5":
        return Rank.five;
      case "6":
        return Rank.six;
      case "7":
        return Rank.seven;
      case "8":
        return Rank.eight;
      case "9":
        return Rank.nine;
      case "T":
        return Rank.ten;
      case "J":
        return Rank.jack;
      case "Q":
        return Rank.queen;
      case "K":
        return Rank.king;
    }

    throw ArgumentError(
        'The given char needs to be one of "A", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q" or "K".');
  }

  int get index;

  String get char;
}

class _Rank implements Rank {
  const _Rank(this.index, this.char);

  final int index;

  final String char;

  toString() => "Rank($char)";

  @override
  int get hashCode => index;

  @override
  int compareTo(other) {
    if (other is Rank) {
      return other.index - index;
    }

    return -1;
  }
}

/// Suit part of playing card.
abstract class Suit implements Comparable {
  static const spade = _Suit(0, "s");

  static const heart = _Suit(1, "h");

  static const diamond = _Suit(2, "d");

  static const club = _Suit(3, "c");

  static const values = [
    Suit.spade,
    Suit.heart,
    Suit.diamond,
    Suit.club,
  ];

  factory Suit.fromChar(String char) {
    switch (char) {
      case "s":
        return Suit.spade;
      case "h":
        return Suit.heart;
      case "d":
        return Suit.diamond;
      case "c":
        return Suit.club;
    }

    throw ArgumentError(
        'The given char needs to be one of "s", "h", "d" or "c".');
  }

  int get index;

  String get char;
}

class _Suit implements Suit {
  const _Suit(this.index, this.char);

  final int index;

  final String char;

  toString() => "Suit($char)";

  @override
  int get hashCode => index;

  @override
  int compareTo(other) {
    if (other is Suit) {
      return other.index - index;
    }

    return -1;
  }
}
