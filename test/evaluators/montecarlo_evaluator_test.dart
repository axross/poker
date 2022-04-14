import 'package:test/test.dart';
import '../../lib/src/evaluators/evaluator.dart';
import "../../lib/src/evaluators/montecarlo_evaluator.dart";
import '../../lib/src/models/immutable_card_set.dart';
import "../../lib/src/models/hand_range.dart";

void main() {
  group("MontecarloEvaluator", () {
    test("MontecarloEvaluator iterates Matchups", () {
      final times = 158928;
      final threshold = (times / 10).round();
      final evaluator = MontecarloEvaluator(
        communityCards: ImmutableCardSet.parse("3c6dTs"),
        players: [
          HandRange.parse("As3h"),
          HandRange.parse("8d8h"),
          HandRange.parse("AQs-ATsAKo-AJo44+"),
        ],
      );

      int length = 0;
      List<int> wins = [0, 0, 0];
      for (final matchup in evaluator.take(times)) {
        for (final i in matchup.wonPlayerIndexes) {
          wins[i] += 1;
        }

        length += 1;
      }

      expect(length, equals(times));
      expect(wins[0], greaterThanOrEqualTo(25412 - threshold));
      expect(wins[0], lessThanOrEqualTo(25412 + threshold));
      expect(wins[1], greaterThanOrEqualTo(71028 - threshold));
      expect(wins[1], lessThanOrEqualTo(71028 + threshold));
      expect(wins[2], greaterThanOrEqualTo(63894 - threshold));
      expect(wins[2], lessThanOrEqualTo(63894 + threshold));
    });

    test(
        "MontecarloEvaluator throws NoPossibleCombinationException when it found there's no possible combination while it iterates",
        () {
      final evaluator = MontecarloEvaluator(
        communityCards: ImmutableCardSet.parse("3c6dAs"),
        players: [
          HandRange.parse("AA"),
          HandRange.parse("AKs"),
          HandRange.parse("AJo+"),
        ],
      );

      expect(
        () => evaluator.take(1),
        throwsA(isA<NoPossibleCombinationException>()),
      );
    });
  });
}
