import "package:test/test.dart";
import "package:poker/poker.dart";

void main() {
  group("Simulator", () {
    group("#orderedPlayerIndexes", () {
      test(
          "it is sorted so that it can make matchup combinations as much as possible",
          () {
        final simulator = Simulator(
          communityCards: {
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.five, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.spade),
          },
          players: [
            {
              HandRangePart(high: Rank.ace, kicker: Rank.ace),
              HandRangePart(high: Rank.king, kicker: Rank.king),
              HandRangePart(high: Rank.queen, kicker: Rank.queen),
              HandRangePart(high: Rank.jack, kicker: Rank.jack),
              HandRangePart(high: Rank.ten, kicker: Rank.ten),
              HandRangePart(high: Rank.nine, kicker: Rank.nine),
              HandRangePart(high: Rank.eight, kicker: Rank.eight),
              HandRangePart(high: Rank.seven, kicker: Rank.seven),
              HandRangePart(high: Rank.six, kicker: Rank.six),
              HandRangePart(high: Rank.five, kicker: Rank.five),
              HandRangePart(high: Rank.four, kicker: Rank.four),
              HandRangePart(high: Rank.ace, kicker: Rank.king, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.queen, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.jack, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.ten, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.nine, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.eight, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.seven, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.six, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.five, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.four, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.three, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.deuce, isSuited: true),
              HandRangePart(
                  high: Rank.king, kicker: Rank.queen, isSuited: true),
              HandRangePart(high: Rank.king, kicker: Rank.jack, isSuited: true),
              HandRangePart(high: Rank.king, kicker: Rank.ten, isSuited: true),
              HandRangePart(high: Rank.king, kicker: Rank.nine, isSuited: true),
              HandRangePart(
                  high: Rank.queen, kicker: Rank.jack, isSuited: true),
              HandRangePart(high: Rank.queen, kicker: Rank.ten, isSuited: true),
              HandRangePart(
                  high: Rank.queen, kicker: Rank.nine, isSuited: true),
              HandRangePart(high: Rank.jack, kicker: Rank.ten, isSuited: true),
              HandRangePart(high: Rank.jack, kicker: Rank.nine, isSuited: true),
              HandRangePart(high: Rank.ten, kicker: Rank.nine, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.king),
              HandRangePart(high: Rank.ace, kicker: Rank.queen),
              HandRangePart(high: Rank.ace, kicker: Rank.jack),
              HandRangePart(high: Rank.ace, kicker: Rank.ten),
              HandRangePart(high: Rank.king, kicker: Rank.queen),
              HandRangePart(high: Rank.king, kicker: Rank.jack),
              HandRangePart(high: Rank.king, kicker: Rank.ten),
              HandRangePart(high: Rank.queen, kicker: Rank.jack),
            },
            {
              HandRangePart(high: Rank.ace, kicker: Rank.ace),
              HandRangePart(high: Rank.king, kicker: Rank.king),
              HandRangePart(high: Rank.queen, kicker: Rank.queen),
              HandRangePart(high: Rank.jack, kicker: Rank.jack),
              HandRangePart(high: Rank.ten, kicker: Rank.ten),
              HandRangePart(high: Rank.nine, kicker: Rank.nine),
              HandRangePart(high: Rank.eight, kicker: Rank.eight),
              HandRangePart(high: Rank.seven, kicker: Rank.seven),
              HandRangePart(high: Rank.six, kicker: Rank.six),
              HandRangePart(high: Rank.five, kicker: Rank.five),
              HandRangePart(high: Rank.ace, kicker: Rank.king, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.queen, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.jack, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.ten, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.nine, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.eight, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.seven, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.six, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.five, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.four, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.three, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.deuce, isSuited: true),
              HandRangePart(
                  high: Rank.king, kicker: Rank.queen, isSuited: true),
              HandRangePart(high: Rank.king, kicker: Rank.jack, isSuited: true),
              HandRangePart(high: Rank.king, kicker: Rank.ten, isSuited: true),
              HandRangePart(high: Rank.king, kicker: Rank.nine, isSuited: true),
              HandRangePart(
                  high: Rank.king, kicker: Rank.eight, isSuited: true),
              HandRangePart(
                  high: Rank.king, kicker: Rank.seven, isSuited: true),
              HandRangePart(high: Rank.king, kicker: Rank.six, isSuited: true),
              HandRangePart(high: Rank.king, kicker: Rank.five, isSuited: true),
              HandRangePart(high: Rank.king, kicker: Rank.four, isSuited: true),
              HandRangePart(
                  high: Rank.king, kicker: Rank.three, isSuited: true),
              HandRangePart(
                  high: Rank.king, kicker: Rank.deuce, isSuited: true),
              HandRangePart(
                  high: Rank.queen, kicker: Rank.jack, isSuited: true),
              HandRangePart(high: Rank.queen, kicker: Rank.ten, isSuited: true),
              HandRangePart(
                  high: Rank.queen, kicker: Rank.nine, isSuited: true),
              HandRangePart(
                  high: Rank.queen, kicker: Rank.eight, isSuited: true),
              HandRangePart(
                  high: Rank.queen, kicker: Rank.seven, isSuited: true),
              HandRangePart(high: Rank.queen, kicker: Rank.six, isSuited: true),
              HandRangePart(
                  high: Rank.queen, kicker: Rank.five, isSuited: true),
              HandRangePart(high: Rank.jack, kicker: Rank.ten, isSuited: true),
              HandRangePart(high: Rank.jack, kicker: Rank.nine, isSuited: true),
              HandRangePart(
                  high: Rank.jack, kicker: Rank.eight, isSuited: true),
              HandRangePart(
                  high: Rank.jack, kicker: Rank.seven, isSuited: true),
              HandRangePart(high: Rank.ten, kicker: Rank.nine, isSuited: true),
              HandRangePart(high: Rank.ten, kicker: Rank.eight, isSuited: true),
              HandRangePart(high: Rank.ten, kicker: Rank.seven, isSuited: true),
              HandRangePart(
                  high: Rank.nine, kicker: Rank.eight, isSuited: true),
              HandRangePart(
                  high: Rank.nine, kicker: Rank.seven, isSuited: true),
              HandRangePart(high: Rank.nine, kicker: Rank.six, isSuited: true),
              HandRangePart(
                  high: Rank.eight, kicker: Rank.seven, isSuited: true),
              HandRangePart(high: Rank.eight, kicker: Rank.six, isSuited: true),
              HandRangePart(
                  high: Rank.eight, kicker: Rank.five, isSuited: true),
              HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true),
              HandRangePart(
                  high: Rank.seven, kicker: Rank.five, isSuited: true),
              HandRangePart(high: Rank.six, kicker: Rank.five, isSuited: true),
              HandRangePart(high: Rank.six, kicker: Rank.four, isSuited: true),
              HandRangePart(high: Rank.five, kicker: Rank.four, isSuited: true),
              HandRangePart(high: Rank.ace, kicker: Rank.king),
              HandRangePart(high: Rank.ace, kicker: Rank.queen),
              HandRangePart(high: Rank.ace, kicker: Rank.jack),
              HandRangePart(high: Rank.ace, kicker: Rank.ten),
              HandRangePart(high: Rank.ace, kicker: Rank.nine),
              HandRangePart(high: Rank.ace, kicker: Rank.eight),
              HandRangePart(high: Rank.ace, kicker: Rank.seven),
              HandRangePart(high: Rank.ace, kicker: Rank.six),
              HandRangePart(high: Rank.ace, kicker: Rank.five),
              HandRangePart(high: Rank.ace, kicker: Rank.four),
              HandRangePart(high: Rank.king, kicker: Rank.queen),
              HandRangePart(high: Rank.king, kicker: Rank.jack),
              HandRangePart(high: Rank.king, kicker: Rank.ten),
              HandRangePart(high: Rank.king, kicker: Rank.nine),
              HandRangePart(high: Rank.queen, kicker: Rank.jack),
              HandRangePart(high: Rank.queen, kicker: Rank.ten),
              HandRangePart(high: Rank.queen, kicker: Rank.nine),
              HandRangePart(high: Rank.jack, kicker: Rank.ten),
              HandRangePart(high: Rank.jack, kicker: Rank.nine),
              HandRangePart(high: Rank.jack, kicker: Rank.ten),
            },
            {
              HoleCardPair(Card(rank: Rank.seven, suit: Suit.heart),
                  Card(rank: Rank.seven, suit: Suit.spade)),
            },
          ],
        );

        expect(
          simulator.orderedPlayerIndexes,
          anyOf(equals([2, 0, 1]), equals([2, 1, 0])),
        );
      });
    });

    group("#evaluate()", () {
      test(
          "it throws NoPossibleMatchupException when there's no possible card combination",
          () {
        final simulator = Simulator(
          communityCards: {
            Card(rank: Rank.ten, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          },
          players: [
            {
              HoleCardPair(
                Card(rank: Rank.six, suit: Suit.spade),
                Card(rank: Rank.seven, suit: Suit.spade),
              )
            },
            {HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true)},
            {HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true)},
          ],
        );

        expect(
          () => simulator.evaluate(),
          throwsA(TypeMatcher<NoPossibleMatchupException>()),
        );
      });
    });
  });

  group("MatchupResult", () {
    group("#wonPlayerIndex", () {
      test("it always contains either or all player index", () {
        final simulator = Simulator(
          communityCards: {},
          players: [
            {
              HoleCardPair(
                Card(rank: Rank.ace, suit: Suit.spade),
                Card(rank: Rank.king, suit: Suit.spade),
              )
            },
            {
              HoleCardPair(
                Card(rank: Rank.eight, suit: Suit.diamond),
                Card(rank: Rank.eight, suit: Suit.club),
              ),
            },
          ],
        );

        expect(
          simulator.evaluate().bestHandIndexes,
          anyOf(contains(0), contains(1)),
        );
      });
    });
  });
}
