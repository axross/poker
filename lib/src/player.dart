import 'card.dart' show Card, Rank, Suit;
import 'card_pair.dart' show CardPair;

mixin Player {
  Set<CardPair> get cardPairCombinations;
}

class HoleCards with Player {
  HoleCards({this.cardPair}) : cardPairCombinations = {cardPair};

  final CardPair cardPair;

  final Set<CardPair> cardPairCombinations;

  int get hashCode => cardPair.hashCode;

  operator ==(Object other) => other is HoleCards && other.cardPair == cardPair;
}

class HandRange with Player {
  HandRange(this.parts)
      : cardPairCombinations = parts.fold<Set<CardPair>>(
            {}, (comb, part) => comb..addAll(part.cardPairCombinations));

  final Set<HandRangePart> parts;

  final Set<CardPair> cardPairCombinations;
}

class HandRangePart {
  static final _cache = <HandRangePart, Set<CardPair>>{};

  HandRangePart({this.high, this.kicker, this.isSuited = false});

  final Rank high;
  final Rank kicker;
  final bool isSuited;

  Set<CardPair> get cardPairCombinations {
    if (!_cache.containsKey(this)) {
      if (isSuited) {
        _cache[this] = Suit.values
            .map((suit) => CardPair(
                  Card(rank: high, suit: suit),
                  Card(rank: kicker, suit: suit),
                ))
            .toSet();
      } else {
        final cardPairs = <CardPair>{};

        for (final highSuit in Suit.values) {
          for (final kickerSuit in Suit.values) {
            if (kickerSuit == highSuit) continue;

            cardPairs.add(CardPair(
              Card(rank: high, suit: highSuit),
              Card(rank: kicker, suit: kickerSuit),
            ));
          }
        }

        _cache[this] = cardPairs;
      }
    }

    return _cache[this];
  }

  int get hashCode {
    int result = 17;

    result = 37 * result + high.hashCode;
    result = 37 * result + kicker.hashCode;
    result = 37 * result + isSuited.hashCode;

    return result;
  }

  operator ==(Object other) =>
      other is HandRangePart &&
      other.high == high &&
      other.kicker == kicker &&
      other.isSuited == isSuited;
}
