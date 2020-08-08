import "package:meta/meta.dart";
import "card.dart";
import "card_pair.dart";
import "hand_range.dart";
import "rank.dart";
import "suit.dart";

@immutable
class RankPair implements HandRangeComponent {
  const RankPair.suited({@required this.high, @required this.kicker})
      : assert(high != null),
        assert(kicker != null),
        assert(high != kicker),
        isSuited = true;

  const RankPair.ofsuit({@required this.high, @required this.kicker})
      : assert(high != null),
        assert(kicker != null),
        isSuited = false;

  factory RankPair.fromString(String value) {
    if (value.length != 3) {
      throw ArgumentError.value(value, "value.length must be 3.");
    }

    if (value[2] != "s" && value[2] != "o") {
      throw ArgumentError.value(value, 'value[2] must be either of "s" or "o"');
    }

    if (value[2] == "s") {
      return RankPair.suited(
        high: Rank.fromChar(value[0]),
        kicker: Rank.fromChar(value[1]),
      );
    }

    return RankPair.ofsuit(
      high: Rank.fromChar(value[0]),
      kicker: Rank.fromChar(value[1]),
    );
  }

  final Rank high;

  final Rank kicker;

  final bool isSuited;

  bool get isPocketPairs => high == kicker;

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + high.hashCode;
    result = 37 * result + kicker.hashCode;
    result = 37 * result + isSuited.hashCode;

    return result;
  }

  @override
  Set<CardPair> toCardPairs() {
    if (isSuited) {
      return {
        CardPair(
          Card(rank: high, suit: Suit.spade),
          Card(rank: kicker, suit: Suit.spade),
        ),
        CardPair(
          Card(rank: high, suit: Suit.heart),
          Card(rank: kicker, suit: Suit.heart),
        ),
        CardPair(
          Card(rank: high, suit: Suit.diamond),
          Card(rank: kicker, suit: Suit.diamond),
        ),
        CardPair(
          Card(rank: high, suit: Suit.club),
          Card(rank: kicker, suit: Suit.club),
        ),
      };
    }

    return {
      CardPair(
        Card(rank: high, suit: Suit.spade),
        Card(rank: kicker, suit: Suit.heart),
      ),
      CardPair(
        Card(rank: high, suit: Suit.spade),
        Card(rank: kicker, suit: Suit.diamond),
      ),
      CardPair(
        Card(rank: high, suit: Suit.spade),
        Card(rank: kicker, suit: Suit.club),
      ),
      CardPair(
        Card(rank: high, suit: Suit.heart),
        Card(rank: kicker, suit: Suit.diamond),
      ),
      CardPair(
        Card(rank: high, suit: Suit.heart),
        Card(rank: kicker, suit: Suit.club),
      ),
      CardPair(
        Card(rank: high, suit: Suit.diamond),
        Card(rank: kicker, suit: Suit.club),
      ),
    };
  }

  @override
  int compareTo(other) {
    assert(other is HandRangeComponent);

    if (other is CardPair) {
      return -1;
    }

    if (other is RankPair) {
      if (!other.isSuited && isSuited) {
        return -1;
      }

      if (other.isSuited && !isSuited) {
        return 1;
      }

      if (high.compareTo(other.high) != 0) {
        return high.compareTo(other.high);
      }

      return kicker.compareTo(other.kicker);
    }

    throw UnimplementedError();
  }

  @override
  String toString() => "${high.char}${kicker.char}${isSuited ? "s" : "o"}";

  @override
  operator ==(Object other) =>
      other is RankPair &&
      other.high == high &&
      other.kicker == kicker &&
      other.isSuited == isSuited;
}
