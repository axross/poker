import "../models/card.dart";
import "../models/evaluation_result.dart";
import "../models/hand_range.dart";

abstract class Evaluator implements Iterable<EvaluationResult> {
  /**
   *
   */
  Set<Card> get communityCards;

  /**
   *
   */
  List<HandRange> get players;
}
