import "package:meta/meta.dart";
import "card_pair.dart";
import "rank_pair.dart";

@immutable
class HandRange {
  HandRange(Set<HandRangeComponent> components) : _components = components;

  factory HandRange.fromString(String value) {
    final cardPairRegExp =
        RegExp(r"[AKQJT98765432][shdc][AKQJT98765432][shdc]");
    final rankPairRegExp = RegExp(r"[AKQJT98765432][AKQJT98765432][so]");

    final components = <HandRangeComponent>{};
    String processedValue = value;

    final cardpairStringMatches = cardPairRegExp.allMatches(processedValue);

    for (final match in cardpairStringMatches) {
      final string = value.substring(match.start, match.end);

      components.add(CardPair.fromString(string));
    }

    processedValue = processedValue.replaceAll(cardPairRegExp, "");

    final rankPairStringMatches = rankPairRegExp.allMatches(processedValue);

    for (final match in rankPairStringMatches) {
      final string = value.substring(match.start, match.end);

      components.add(RankPair.fromString(string));
    }

    return HandRange(components);
  }

  final Set<HandRangeComponent> _components;

  Set<CardPair> toCardPairSet() => _components.fold(
        <CardPair>{},
        (set, component) => set..addAll(component.toCardPairs()),
      );

  bool get isEmpty => _components.length == 0;

  bool get isNotEmpty => _components.length != 0;
}

mixin HandRangeComponent {
  Set<CardPair> toCardPairs();
}
