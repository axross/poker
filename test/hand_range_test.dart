import "package:poker/poker.dart";
import "package:test/test.dart";

void main() {
  group("HandRange.fromString()", () {
    test(
        "HandRange.fromString(\"AQs-ATsAKo-AJo44+\") returns HandRange<AQs-ATsAKo-AJo44+>",
        () {
      final handRange = HandRange.fromString("AQs-ATsAKo-AJo44+");

      expect(
        handRange,
        containsAll({
          CardPair(
            Card(Rank.ace, Suit.spade),
            Card(Rank.queen, Suit.spade),
          ),
          CardPair(
            Card(Rank.ace, Suit.heart),
            Card(Rank.queen, Suit.heart),
          ),
          CardPair(
            Card(Rank.ace, Suit.diamond),
            Card(Rank.queen, Suit.diamond),
          ),
          CardPair(
            Card(Rank.ace, Suit.club),
            Card(Rank.queen, Suit.club),
          ),
        }),
      );
    });
  });
}
