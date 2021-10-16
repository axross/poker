/// An enum that expresses a rank of [Card].
enum Rank {
  ace,
  deuce,
  trey,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  jack,
  queen,
  king
}

extension RankPower on Rank {
  int get powerIndex {
    return this == Rank.ace ? 0 : 13 - this.index;
  }
}

extension RankToChar on Rank {
  String get char {
    switch (this) {
      case Rank.ace:
        return "A";
      case Rank.deuce:
        return "2";
      case Rank.trey:
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
}

Rank rankFromChar(String value) {
  switch (value) {
    case "A":
      return Rank.ace;
    case "2":
      return Rank.deuce;
    case "3":
      return Rank.trey;
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

  throw ArgumentError.value(value);
}
