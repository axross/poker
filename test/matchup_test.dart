import 'package:poker/src/matchup.dart';
import "package:test/test.dart";
import "package:poker/poker.dart";

void main() {
  // ランダムにコミュニティカードが選択されるかどうか
  // ランダムにプレイヤーのカードが選択されるかどうか
  // 組み合わせとして不可能な場合にエラーを投げるかどうか
  // 勝利プレイヤーのindexが正しいかどうか

  group("Matchup", () {
    group("#evaluate()", () {
      test(
          "it throws NoPossibleMatchupException when there's no possible card combination",
          () {
        final matchup = Matchup(
          communityCards: {
            Card(rank: Rank.ten, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          },
          players: [
            HoleCards(
              cardPair: CardPair(
                Card(rank: Rank.six, suit: Suit.spade),
                Card(rank: Rank.seven, suit: Suit.spade),
              ),
            ),
            HandRange({
              HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true)
            }),
            HandRange({
              HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true)
            }),
          ],
        );

        expect(
          () => matchup.evaluate(),
          throwsA(TypeMatcher<NoPossibleMatchupException>()),
        );
      });
    });
  });

  // group("MatchupResult", () {
  //   group("#wonPlayerIndex", () {
  //     test("", () {});
  //   });
  // });
}
