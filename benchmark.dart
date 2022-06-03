import 'package:poker/poker.dart';

final communityCards = ImmutableCardSet.parse('3c6dTs');
final players = [
  HandRange.parse('As3h'),
  HandRange.parse('8d8h'),
  HandRange.parse('AQs-ATsAKo-AJo44+'),
];

void main() {
  benchmarkExhaustiveEvaluator();
  benchmarkMontecarloEvaluator();
}

void benchmarkExhaustiveEvaluator() {
  print('exhaustive evaluator');

  final wins = List.filled(players.length, 0);

  final initializationStarted = DateTime.now();
  final evaluator = ExhaustiveEvaluator(
    communityCards: communityCards,
    players: players,
  );

  print('initialization: ${DateTime.now().difference(initializationStarted)}');

  final evaluationStarted = DateTime.now();

  for (final matchup in evaluator) {
    for (final i in matchup.wonPlayerIndexes) {
      wins[i] += 1;
    }
  }

  print('evaluation: ${DateTime.now().difference(evaluationStarted)}');

  print(wins);
}

void benchmarkMontecarloEvaluator() {
  print('montecarlo evaluator');

  final wins = List.filled(players.length, 0);

  final initializationStarted = DateTime.now();
  final evaluator = MontecarloEvaluator(
    communityCards: communityCards,
    players: players,
  );

  print('initialization: ${DateTime.now().difference(initializationStarted)}');

  final evaluationStarted = DateTime.now();

  for (final matchup in evaluator.take(158928)) {
    for (final i in matchup.wonPlayerIndexes) {
      wins[i] += 1;
    }
  }

  print('evaluation: ${DateTime.now().difference(evaluationStarted)}');

  print(wins);
}
