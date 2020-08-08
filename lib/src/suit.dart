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
      return index - other.index;
    }

    return 0;
  }
}
