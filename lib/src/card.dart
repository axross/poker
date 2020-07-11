class Card {
  const Card({Rank this.rank, Suit this.suit});

  final Rank rank;

  final Suit suit;

  @override
  String toString() => "${rankChars[rank]}${suitChars[suit]}";

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
}

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

enum Suit {
  spade,
  heart,
  diamond,
  club,
}

const rankChars = {
  Rank.ace: "A",
  Rank.deuce: "2",
  Rank.three: "3",
  Rank.four: "4",
  Rank.five: "5",
  Rank.six: "6",
  Rank.seven: "7",
  Rank.eight: "8",
  Rank.nine: "9",
  Rank.ten: "T",
  Rank.jack: "J",
  Rank.queen: "Q",
  Rank.king: "K",
};

const suitChars = {
  Suit.spade: "s",
  Suit.heart: "h",
  Suit.diamond: "d",
  Suit.club: "c",
};
