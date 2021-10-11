import "dart:math";
import "./made_hand.dart";
import "./matchup.dart";

class EvaluationResult {
  EvaluationResult({
    required this.tries,
    required this.games,
    required this.players,
  });

  EvaluationResult.empty({required int playerLength})
      : tries = 0,
        games = 0,
        players = List.generate(
          playerLength,
          (_) => EvaluationResultPlayer.empty(playerLength: playerLength),
        );

  factory EvaluationResult.fromMatchup(Matchup matchup) {
    MadeHand? bestHand = null;
    List<int> bestPlayerIndexes = [];

    for (int i = 0; i < matchup.playerMadeHands.length; ++i) {
      final madeHand = matchup.playerMadeHands[i];

      if (madeHand.power > (bestHand?.power ?? -1)) {
        bestHand = madeHand;
        bestPlayerIndexes = [i];
      } else if (madeHand.power == bestHand?.power) {
        bestPlayerIndexes.add(i);
      }
    }

    final players = List.generate(
        matchup.playerMadeHands.length,
        (index) => bestPlayerIndexes.contains(index)
            ? EvaluationResultPlayer(
                won: 1,
                equity: bestPlayerIndexes.length >= 2
                    ? 1 / bestPlayerIndexes.length
                    : 1,
              )
            : EvaluationResultPlayer.empty(
                playerLength: matchup.playerMadeHands.length,
              ));

    return EvaluationResult(
      tries: 1,
      games: 1,
      players: players,
    );
  }

  /**
   *
   */
  final int tries;

  /**
   *
   */
  final int games;

  final List<EvaluationResultPlayer> players;

  @override
  String toString() =>
      "EvaluationResult<tries: $tries, games: $games, players: $players>";

  EvaluationResult operator +(EvaluationResult other) {
    List<EvaluationResultPlayer> nextPlayers = players.toList();

    for (int i = 0; i < min(players.length, other.players.length); ++i) {
      nextPlayers[i] += other.players[i];
    }

    return EvaluationResult(
      tries: tries + other.tries,
      games: games + other.games,
      players: nextPlayers,
    );
  }
}

class EvaluationResultPlayer {
  EvaluationResultPlayer({
    required this.won,
    required this.equity,
  });

  EvaluationResultPlayer.empty({required int playerLength})
      : won = 0,
        equity = 0;

  final int won;

  final double equity;

  @override
  String toString() => "EvaluationResultPlayer<$equity>";

  EvaluationResultPlayer operator +(EvaluationResultPlayer other) {
    return EvaluationResultPlayer(
      won: won + other.won,
      equity: equity + other.equity,
    );
  }
}
