import "package:benchmark_harness/benchmark_harness.dart";
import "package:poker/poker.dart";
import "package:poker/evaluator.dart";

class ExhaustiveBenchmark extends BenchmarkBase {
  ExhaustiveBenchmark() : super('Exhaustive');

  late Evaluator evaluator;

  late Iterable<EvaluationResult> iterable;

  late EvaluationResult result;

  @override
  void run() {
    for (final r in iterable) {
      result += r;
    }
  }

  @override
  void setup() {
    evaluator = ExhaustiveEvaluator(
      communityCards: CardSet.fromString("3c6dTs4d"),
      players: [
        HandRange.fromString("As3h"),
        HandRange.fromString("8d8h"),
        HandRange.fromString("AQs-ATsAKo-AJo44+"),
        HandRange.fromString("AQs-ATsAKo-AJo44+"),
      ],
    );
    iterable = evaluator.take(10000);
    result = EvaluationResult.empty(playerLength: 4);
  }

  @override
  void teardown() {
    print(result);
  }
}

class MontecarloBenchmark extends BenchmarkBase {
  MontecarloBenchmark() : super('Montecarlo');

  late Evaluator evaluator;

  late Iterable<EvaluationResult> iterable;

  late EvaluationResult result;

  @override
  void run() {
    for (final r in iterable) {
      result += r;
    }
  }

  @override
  void setup() {
    evaluator = MontecarloEvaluator(
      communityCards: CardSet.fromString("3c6dTs4d"),
      players: [
        HandRange.fromString("As3h"),
        HandRange.fromString("8d8h"),
        HandRange.fromString("AQs-ATsAKo-AJo44+"),
        HandRange.fromString("AQs-ATsAKo-AJo44+"),
      ],
    );
    iterable = evaluator.take(10000);
    result = EvaluationResult.empty(playerLength: 4);
  }

  @override
  void teardown() {
    print(result);
  }
}

void main() {
  ExhaustiveBenchmark().report();
  MontecarloBenchmark().report();
}
