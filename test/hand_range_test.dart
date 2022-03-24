import "package:poker/poker.dart";
import "package:test/test.dart";

void main() {
  bool checkIfInRange(String cardPair, String range) {
    HandRange cardPairParsed = HandRange.fromString(cardPair);
    HandRange rangeParsed = HandRange.fromString(range);
    return rangeParsed.contains(cardPairParsed.first);
  }

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
    test("HandRange.fromString(\"AJo+\") returns HandRange<AKo, AQo, AJo>", () {
      expect(checkIfInRange("AhQs", "AJo+"), true);
      expect(checkIfInRange("AsKd", "AJo+"), true);
    });

    test(
        "HandRange.fromString(\"JJ+, ATs+, KQs, AJo+\") returns HandRange<AA, AKo, AQo, AJo, AKs, AQs, AJs, ATs, KQs, QQ, JJ>",
        () {
      expect(checkIfInRange("AhAd", "JJ+, ATs+, KQs, AJo+"), true);
      expect(checkIfInRange("AsTs", "JJ+, ATs+, KQs, AJo+"), true);
      expect(checkIfInRange("JsJh", "JJ+, ATs+, KQs, AJo+"), true);
      expect(checkIfInRange("KcQc", "JJ+, ATs+, KQs, AJo+"), true);
      expect(checkIfInRange("QsKs", "JJ+, ATs+, KQs, AJo+"), true);
    });
  });
}
