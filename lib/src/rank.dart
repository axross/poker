/// Rank part of playing card.
abstract class Rank implements Comparable {
  static const ace = _Rank(0, "A");

  static const deuce = _Rank(12, "2");

  static const three = _Rank(11, "3");

  static const four = _Rank(10, "4");

  static const five = _Rank(9, "5");

  static const six = _Rank(8, "6");

  static const seven = _Rank(7, "7");

  static const eight = _Rank(6, "8");

  static const nine = _Rank(5, "9");

  static const ten = _Rank(4, "T");

  static const jack = _Rank(3, "J");

  static const queen = _Rank(2, "Q");

  static const king = _Rank(1, "K");

  static const values = [
    Rank.ace,
    Rank.king,
    Rank.queen,
    Rank.jack,
    Rank.ten,
    Rank.nine,
    Rank.eight,
    Rank.seven,
    Rank.six,
    Rank.five,
    Rank.four,
    Rank.three,
    Rank.deuce,
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
      return index - other.index;
    }

    return 0;
  }
}
