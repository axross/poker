import "package:poker/poker.dart";
import "package:poker/src/rank_pair.dart";
import "package:test/test.dart";

void main() {
  test(
      "RankPair.suited() throws an ArgumentError when a \"suited pocket pair\" is given",
      () {
    expect(
      () => RankPair.suited(high: Rank.seven, kicker: Rank.seven),
      throwsA(isA<AssertionError>()),
    );
  });

  group("RankPair.fromString()", () {
    test("RankPair.fromString() returns a RankPair by the given String", () {
      expect(
        RankPair.fromString("AKs"),
        equals(RankPair.suited(high: Rank.ace, kicker: Rank.king)),
      );

      expect(
        RankPair.fromString("AKo"),
        equals(RankPair.ofsuit(high: Rank.ace, kicker: Rank.king)),
      );

      expect(
        RankPair.fromString("44o"),
        equals(RankPair.ofsuit(high: Rank.four, kicker: Rank.four)),
      );
    });

    test(
        "RankPair.fromString() throws an ArgumentError when invalid string is given",
        () {
      expect(
        () => RankPair.fromString("1Ks"),
        throwsA(isA<ArgumentError>()),
      );

      expect(
        () => RankPair.fromString("J1o"),
        throwsA(isA<ArgumentError>()),
      );

      expect(
        () => RankPair.fromString("AKi"),
        throwsA(isA<ArgumentError>()),
      );

      expect(
        () => RankPair.fromString("A11s"),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group("RankPair.toCardPairs()", () {
    test(
        "when it's suited, RankPair.toCardPairs() returns 4 combinations of CardPairs",
        () {
      expect(
        RankPair.suited(high: Rank.ace, kicker: Rank.king).toCardPairs(),
        hasLength(4),
      );
    });

    test(
        "when it's ofsuit, RankPair.toCardPairs() returns 6 combinations of CardPairs",
        () {
      expect(
        RankPair.ofsuit(high: Rank.ace, kicker: Rank.king).toCardPairs(),
        hasLength(6),
      );
    });
  });
}
