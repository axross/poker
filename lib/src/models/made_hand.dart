import "package:meta/meta.dart";
import "../constants/precalculated_table.dart";
import './immutable_card_set.dart';
import "./rank.dart";
import "./suit.dart";

/**
 * An index of [Cactus Kev's poker hand equivalence enums](http://suffe.cool/poker/7462.html).
 */
@immutable
class MadeHand {
  const MadeHand.fromIndex(this._value);

  factory MadeHand.best(ImmutableCardSet cards) {
    final flushSuit = _findFlushSuit(cards);

    if (flushSuit != null) {
      return MadeHand.fromIndex(
          asFlush[_hashForFlush(cards: cards, suit: flushSuit)]);
    }

    return MadeHand.fromIndex(asRainbow[_hashForRainbow(cards)]);
  }

  final int _value;

  MadeHandType get type {
    if (_value > 6185) return MadeHandType.highcard;
    if (_value > 3325) return MadeHandType.pair;
    if (_value > 2467) return MadeHandType.twoPairs;
    if (_value > 1609) return MadeHandType.trips;
    if (_value > 1599) return MadeHandType.straight;
    if (_value > 322) return MadeHandType.flush;
    if (_value > 166) return MadeHandType.fullHouse;
    if (_value > 10) return MadeHandType.quads;

    return MadeHandType.straightFlush;
  }

  int get power => 7462 - _value;

  @override
  String toString() => "MadeHand<$_value>";

  @override
  int get hashCode => _value;

  @override
  operator ==(Object other) => other is MadeHand && _value == other._value;
}

enum MadeHandType {
  highcard,
  pair,
  twoPairs,
  trips,
  straight,
  flush,
  fullHouse,
  quads,
  straightFlush
}

Suit? _findFlushSuit(ImmutableCardSet cards) {
  final suitCount = {
    Suit.spade: 0,
    Suit.heart: 0,
    Suit.diamond: 0,
    Suit.club: 0,
  };

  for (final card in cards) {
    suitCount[card.suit] = suitCount[card.suit]! + 1;

    if (suitCount[card.suit]! == 5) {
      return card.suit;
    }
  }

  return null;
}

int _hashForFlush({required ImmutableCardSet cards, required Suit suit}) {
  const bitEachRank = {
    Rank.ace: 0x1000,
    Rank.deuce: 0x1,
    Rank.trey: 0x2,
    Rank.four: 0x4,
    Rank.five: 0x8,
    Rank.six: 0x10,
    Rank.seven: 0x20,
    Rank.eight: 0x40,
    Rank.nine: 0x80,
    Rank.ten: 0x100,
    Rank.jack: 0x200,
    Rank.queen: 0x400,
    Rank.king: 0x800,
  };
  int hash = 0;

  for (final card in cards) {
    if (card.suit == suit) {
      hash += bitEachRank[card.rank]!;
    }
  }

  return hash;
}

int _hashForRainbow(ImmutableCardSet cards) {
  final cardLengthEachRank = {
    Rank.ace: 0,
    Rank.deuce: 0,
    Rank.trey: 0,
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
  int remainingCardLength = cards.length;

  for (final card in cards) {
    cardLengthEachRank[card.rank] = cardLengthEachRank[card.rank]! + 1;
  }

  int hash = 0;

  for (final rank in const [
    Rank.deuce,
    Rank.trey,
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
    final length = cardLengthEachRank[rank]!;

    if (length == 0) continue;

    hash += dpReference[length]![rank]![remainingCardLength];
    remainingCardLength -= length;

    if (remainingCardLength == 0) break;
  }

  return hash;
}
