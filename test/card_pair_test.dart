import "package:poker/poker.dart";
import "package:poker/src/card_pair.dart";
import "package:test/test.dart";

void main() {
  group("CardPair", () {
    test("it is the same regardless the order of given two cards", () {
      expect(
        CardPair(
          const Card(rank: Rank.ace, suit: Suit.spade),
          const Card(rank: Rank.ace, suit: Suit.heart),
        ),
        equals(CardPair(
          const Card(rank: Rank.ace, suit: Suit.heart),
          const Card(rank: Rank.ace, suit: Suit.spade),
        )),
      );
    });

    test("#hashCode is the same regardless the order of given two cards", () {
      expect(
        CardPair(
          const Card(rank: Rank.ace, suit: Suit.spade),
          const Card(rank: Rank.ace, suit: Suit.heart),
        ).hashCode,
        equals(CardPair(
          const Card(rank: Rank.ace, suit: Suit.heart),
          const Card(rank: Rank.ace, suit: Suit.spade),
        ).hashCode),
      );
    });
  });
}
