import "dart:io";
import "package:args/command_runner.dart";
import "package:poker/poker.dart";
import "package:poker/evaluator.dart";

void main(List<String> rawArgs) {
  CommandRunner("poker", "Texas Hold'em Poker CLI toolchain")
    ..addCommand(EvaluateCommand())
    ..run(rawArgs);
}

class EvaluateCommand extends Command {
  final name = "evaluate";

  final description = "Evaluate the situation and output the results.";

  EvaluateCommand() {
    argParser
      ..addOption(
        "board",
        help: "The community cards.",
        mandatory: true,
        valueHelp: "As7h9d",
      )
      ..addMultiOption(
        "players",
        help: "The player hand ranges.",
        valueHelp: "AKs44+",
      )
      ..addOption(
        "mode",
        help: "Specify the way to evaluate matchups.",
        allowed: {"auto", "montecarlo", "exhaustive"},
        allowedHelp: {
          "auto": "Use the best way by the space compexity.",
          "montecarlo": "Always use montecarlo simulation.",
          "exhaustive": "Always use exhaustive evaluation.",
        },
        defaultsTo: "auto",
      )
      ..addOption(
        "max",
        help:
            "Specify maximum number of times of montecarlo simulation. This option is ignored in exhaustive evaluation.",
        defaultsTo: "1000000",
      );
  }

  void run() {
    CardSet communityCards;
    try {
      communityCards = CardSet.fromString(argResults!["board"]);
    } on CardSetParseFailure catch (_) {
      print("The value ${argResults!["board"]} at --board option is invalid.");

      exit(1);
    }

    final players = <HandRange>[];

    for (final playerString in argResults!["players"]) {
      final handRange = HandRange.fromString(playerString);

      if (handRange.isEmpty) {
        print(
            "The value ${argResults!["players"][0]} at --players is invalid.");

        exit(1);
      }

      players.add(handRange);
    }

    final resolvedMode =
        argResults!["mode"] == "exhaustive" ? "exhaustive" : "montecarlo";
    final evaluator = resolvedMode == "exhaustive"
        ? ExhaustiveEvaluator(communityCards: communityCards, players: players)
        : MontecarloEvaluator(communityCards: communityCards, players: players);
    Iterable<EvaluationResult> iteration;

    if (resolvedMode == "montecarlo") {
      int max;

      try {
        max = int.parse(argResults!["max"]);
      } catch (_) {
        print("The value ${argResults!["max"]} at --max is invalid.");

        exit(1);
      }

      iteration = evaluator.take(max);
    } else {
      iteration = evaluator;
    }

    EvaluationResult result =
        EvaluationResult.empty(playerLength: players.length);

    for (final r in iteration) {
      result += r;
    }

    print("Evaluated ${result.games} situations.");

    for (final entry in result.players.asMap().entries) {
      print(
          "Player <${players[entry.key]}>: ${(entry.value.equity / result.games * 100).toStringAsFixed(2)}% equity (${(entry.value.won / result.games * 100).toStringAsFixed(2)}% won)");
    }
  }
}
