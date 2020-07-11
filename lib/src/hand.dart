import 'card.dart' show Card, Rank, Suit;
import 'precalculated_table.dart' show dpReference, asFlush, forNonFlush;

class Hand {
  Hand._(int this.id);

  factory Hand.bestFrom(Iterable<Card> cards) {
    if (cards.length != 7) {
      throw Exception();
    }

    final flushSuit = _findFlushSuit(cards);

    if (flushSuit != null) {
      return Hand._(asFlush[_hashForFlush(cards: cards, suit: flushSuit)]);
    }
    return Hand._(forNonFlush[_hashForNonFlush(cards: cards)]);
  }

  /// An id of Cactus Kev's poker hand equivalence enums
  // http://suffe.cool/poker/7462.html
  final int id;

  int get strongness => 7462 - id;

  get type {
    if (id > 6185) return HandType.highCard;
    if (id > 3325) return HandType.pair;
    if (id > 2467) return HandType.twoPairs;
    if (id > 1609) return HandType.threeOfAKind;
    if (id > 1599) return HandType.straight;
    if (id > 322) return HandType.flush;
    if (id > 166) return HandType.fullHouse;
    if (id > 10) return HandType.fourOfAKind;
    return HandType.straightFlush;
  }
}

enum HandType {
  straightFlush,
  fourOfAKind,
  fullHouse,
  flush,
  straight,
  threeOfAKind,
  twoPairs,
  pair,
  highCard,
}

Suit _findFlushSuit(Iterable<Card> cards) {
  final suitCount = {
    Suit.spade: 0,
    Suit.heart: 0,
    Suit.diamond: 0,
    Suit.club: 0,
  };

  for (final card in cards) {
    suitCount[card.suit] += 1;

    if (suitCount[card.suit] == 5) {
      return card.suit;
    }
  }

  return null;
}

int _hashForFlush({Iterable<Card> cards, Suit suit}) {
  const bitEachRank = {
    Rank.ace: 0x1000,
    Rank.king: 0x800,
    Rank.queen: 0x400,
    Rank.jack: 0x200,
    Rank.ten: 0x100,
    Rank.nine: 0x80,
    Rank.eight: 0x40,
    Rank.seven: 0x20,
    Rank.six: 0x10,
    Rank.five: 0x8,
    Rank.four: 0x4,
    Rank.three: 0x2,
    Rank.deuce: 0x1,
  };
  int hash = 0;

  for (final card in cards) {
    if (card.suit != suit) continue;

    hash += bitEachRank[card.rank];
  }

  return hash;
}

int _hashForNonFlush({Iterable<Card> cards}) {
  final cardLengthEachRank = {
    Rank.ace: 0,
    Rank.deuce: 0,
    Rank.three: 0,
    Rank.four: 0,
    Rank.five: 0,
    Rank.six: 0,
    Rank.seven: 0,
    Rank.eight: 0,
    Rank.nine: 0,
    Rank.ten: 0,
    Rank.jack: 0,
    Rank.queen: 0,
    Rank.king: 0,
  };

  for (final card in cards) {
    cardLengthEachRank[card.rank] = cardLengthEachRank[card.rank] + 1;
  }

  return _hashQuinary(
    cardLengthEachRank: cardLengthEachRank,
    cardLength: cards.length,
  );
}

int _hashQuinary({Map<Rank, int> cardLengthEachRank, int cardLength}) {
  int hash = 0;
  int remainingCardLength = cardLength;

  for (final rank in const [
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
    Rank.ace,
  ]) {
    final length = cardLengthEachRank[rank];

    if (length == 0) continue;

    hash += dpReference[length][rank][remainingCardLength];
    remainingCardLength -= length;

    if (remainingCardLength <= 0) break;
  }

  return hash;
}
