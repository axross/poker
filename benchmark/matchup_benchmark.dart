import 'package:poker/poker.dart';
import "package:benchmark_harness/benchmark_harness.dart";

class SimulatorInitializationBenchmark extends BenchmarkBase {
  SimulatorInitializationBenchmark()
      : super("SimulatorInitializationBenchmark");

  void run() {
    Simulator(
      communityCards: {},
      players: [
        {
          HandRangePart(high: Rank.ace, kicker: Rank.deuce, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.three, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.four, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.five, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.nine, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.ten, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.jack, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.queen, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.king, isSuited: true),
          HandRangePart(high: Rank.five, kicker: Rank.five),
          HandRangePart(high: Rank.six, kicker: Rank.six),
          HandRangePart(high: Rank.seven, kicker: Rank.seven),
          HandRangePart(high: Rank.eight, kicker: Rank.eight),
          HandRangePart(high: Rank.nine, kicker: Rank.nine),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.ace, kicker: Rank.deuce, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.three, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.four, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.five, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.nine, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.ten, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.jack, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.queen, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.king, isSuited: true),
          HandRangePart(high: Rank.five, kicker: Rank.five),
          HandRangePart(high: Rank.six, kicker: Rank.six),
          HandRangePart(high: Rank.seven, kicker: Rank.seven),
          HandRangePart(high: Rank.eight, kicker: Rank.eight),
          HandRangePart(high: Rank.nine, kicker: Rank.nine),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.ace, kicker: Rank.deuce, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.three, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.four, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.five, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.nine, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.ten, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.jack, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.queen, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.king, isSuited: true),
          HandRangePart(high: Rank.five, kicker: Rank.five),
          HandRangePart(high: Rank.six, kicker: Rank.six),
          HandRangePart(high: Rank.seven, kicker: Rank.seven),
          HandRangePart(high: Rank.eight, kicker: Rank.eight),
          HandRangePart(high: Rank.nine, kicker: Rank.nine),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.eight, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.nine, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.eight, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.nine, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.eight, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.nine, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
      ],
    );
  }
}

class SimulatorEvaluationBenchmark extends BenchmarkBase {
  SimulatorEvaluationBenchmark() : super("SimulatorEvaluationBenchmark");

  Simulator simulator;

  void setup() {
    simulator = Simulator(
      communityCards: {},
      players: [
        {
          HandRangePart(high: Rank.ace, kicker: Rank.deuce, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.three, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.four, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.five, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.nine, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.ten, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.jack, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.queen, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.king, isSuited: true),
          HandRangePart(high: Rank.five, kicker: Rank.five),
          HandRangePart(high: Rank.six, kicker: Rank.six),
          HandRangePart(high: Rank.seven, kicker: Rank.seven),
          HandRangePart(high: Rank.eight, kicker: Rank.eight),
          HandRangePart(high: Rank.nine, kicker: Rank.nine),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.ace, kicker: Rank.deuce, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.three, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.four, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.five, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.nine, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.ten, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.jack, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.queen, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.king, isSuited: true),
          HandRangePart(high: Rank.five, kicker: Rank.five),
          HandRangePart(high: Rank.six, kicker: Rank.six),
          HandRangePart(high: Rank.seven, kicker: Rank.seven),
          HandRangePart(high: Rank.eight, kicker: Rank.eight),
          HandRangePart(high: Rank.nine, kicker: Rank.nine),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.ace, kicker: Rank.deuce, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.three, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.four, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.five, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.nine, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.ten, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.jack, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.queen, isSuited: true),
          HandRangePart(high: Rank.ace, kicker: Rank.king, isSuited: true),
          HandRangePart(high: Rank.five, kicker: Rank.five),
          HandRangePart(high: Rank.six, kicker: Rank.six),
          HandRangePart(high: Rank.seven, kicker: Rank.seven),
          HandRangePart(high: Rank.eight, kicker: Rank.eight),
          HandRangePart(high: Rank.nine, kicker: Rank.nine),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.eight, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.nine, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.eight, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.nine, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
        {
          HandRangePart(high: Rank.eight, kicker: Rank.seven, isSuited: true),
          HandRangePart(high: Rank.nine, kicker: Rank.eight, isSuited: true),
          HandRangePart(high: Rank.seven, kicker: Rank.six, isSuited: true),
          HandRangePart(high: Rank.ten, kicker: Rank.ten),
          HandRangePart(high: Rank.jack, kicker: Rank.jack),
          HandRangePart(high: Rank.queen, kicker: Rank.queen),
          HandRangePart(high: Rank.king, kicker: Rank.king),
          HandRangePart(high: Rank.ace, kicker: Rank.ace),
        },
      ],
    );
  }

  void teardown() {
    simulator = null;
  }

  void run() {
    simulator.evaluate();
  }
}

void main() {
  SimulatorInitializationBenchmark().report();
  SimulatorEvaluationBenchmark().report();
}
