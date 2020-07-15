import "package:test/test.dart";
import "package:poker/poker.dart";

void main() {
  group("Simulator", () {
    group("#evaluate()", () {
      test(
          "it throws NoPossibleMatchupException when there's no possible card combination",
          () {
        final matchup = Simulator(
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
          () => matchup.evaluate(),
          throwsA(TypeMatcher<NoPossibleMatchupException>()),
        );
      });
    });
  });

  group("MatchupResult", () {
    group("#wonPlayerIndex", () {
      test("it always contains either or all player index", () {
        final matchup = Simulator(
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
          matchup.evaluate().bestHandIndexes,
          anyOf(contains(0), contains(1)),
        );
      });
    });
  });
}
