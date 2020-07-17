import "package:meta/meta.dart";

/// A piece of playing cards.
@immutable
class Card {
  /// Creates a card by its rank and suit.
  const Card({@required this.rank, @required this.suit})
      : assert(rank != null),
        assert(suit != null);

  /// Creates a card by a 2-character-length string (e.g. `"As"`, `"Th"` and `"2d"`).
  Card.fromString(String value)
      : assert(value.length == 2),
        rank = _charToRank(value[0]),
        suit = _charToSuit(value[1]);

  /// The rank part of the objct.
  final Rank rank;

  /// The suit part of the objct.
  final Suit suit;

  /// Returns a string representation. Ace of spade is `"As"`, 10 of heart is `"Th"` and 2 of diamond is `"2d"`.
  @override
  String toString() => "${_rankToChar(rank)}${_suitToChar(suit)}";

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + rank.hashCode;
    result = 37 * result + suit.hashCode;

    return result;
  }

  @override
  bool operator ==(dynamic other) =>
      other is Card && other.rank == rank && other.suit == suit;

  bool operator <(Card other) =>
      other.rank.index > rank.index || other.suit.index > suit.index;
}

/// Rank part of playing card.
enum Rank {
  ace,
  deuce,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  jack,
  queen,
  king,
}

/// Suit part of playing card.
enum Suit {
  spade,
  heart,
  diamond,
  club,
}

// ignore: missing_return
String _rankToChar(Rank rank) {
  switch (rank) {
    case Rank.ace:
      return "A";
    case Rank.deuce:
      return "2";
    case Rank.three:
      return "3";
    case Rank.four:
      return "4";
    case Rank.five:
      return "5";
    case Rank.six:
      return "6";
    case Rank.seven:
      return "7";
    case Rank.eight:
      return "8";
    case Rank.nine:
      return "9";
    case Rank.ten:
      return "T";
    case Rank.jack:
      return "J";
    case Rank.queen:
      return "Q";
    case Rank.king:
      return "K";
  }
}

// ignore: missing_return
String _suitToChar(Suit suit) {
  switch (suit) {
    case Suit.spade:
      return "s";
    case Suit.heart:
      return "h";
    case Suit.diamond:
      return "d";
    case Suit.club:
      return "c";
  }
}

Rank _charToRank(String char) {
  assert(char.length == 1);

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

Suit _charToSuit(String char) {
  assert(char.length == 1);

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
