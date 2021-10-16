/// An enum that expresses a suit of [Card].
enum Suit { spade, heart, diamond, club }

extension SuitChar on Suit {
  String get char {
    switch (this) {
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
}
