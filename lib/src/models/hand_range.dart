import "dart:collection";
import "package:meta/meta.dart";
import "./card.dart";
import "./rank.dart";
import "./suit.dart";

/// A set expression of [CardPair]s that a player possibly has.
///
/// On realistic poker table, people guess what other players possibly have.
///
/// TBD
class HandRange with IterableMixin<CardPair> {
  /// Creates a HandRange from a `Set<CardPairConvertable>`.
  ///
  /// [CardPair]s and [RankPair]s implement [CardPairConvertable]. You can use either or both of them to construct a HandRange.
  ///
  /// ```dart
  /// final handRange = HandRange({
  ///   // use CardPair for a specific pair of cards
  ///   CardPair(Card(Rank.ace, Suit.spade), Card(Rank.ace, Suit.heart)),
  ///   // use RankPair for suited or ofsuit group of card pairs.
  ///   RankPair.suited(Rank.ace, Rank.king),
  ///   RankPair.ofsuit(Rank.ace, Rank.queen),
  /// });
  /// ```
  ///
  /// HandRange is an iterable object of CardPairs. You can iterate a HandRange to get a combination set of CardPairs inside.
  ///
  /// ```dart
  /// final handRange = HandRange({
  ///   CardPair(Card(Rank.ace, Suit.spade), Card(Rank.ace, Suit.heart)),
  ///   RankPair.suited(Rank.ace, Rank.king),
  ///   RankPair.ofsuit(Rank.ace, Rank.queen),
  /// });
  ///
  /// // Iterable<CardPair> that either or both card has heart
  /// final cardPairsOfHeart = handRange
  ///   .where((cardPair) => cardPair.first.suit == Suit.heart || cardPair.last.suit == heart);
  /// ```
  HandRange(Set<CardPairConvertable> components) : _components = components;

  /// Parses a [String] to create a HandRange.
  ///
  /// ```dart
  /// final handRange = HandRange.fromString("AhKdAKsT9o55ATs+88+");
  /// ```
  ///
  /// This method expects a String that forms a sequence of following parts:
  /// - `AhKd` - Specific pair of cards. It will turn into a [CardPair].
  /// - `AKs` - All suited combinations from two different ranks.
  /// - `T9o` - All ofsuit combinations from two different ranks.
  /// - `66` - All ofsuit combinations from a specific rank (pocket pair).
  /// - `ATs+` - All suited combinations above and equal than two specific ranks. `ATs+` turn into equivalent of `ATs`, `AJs`, `AQs` and `AKs`.
  /// - `JJ+` - All pocket pairs above and equal than a specific rank. `JJ+` will turn into equivalent of `JJ`, `QQ`, `KK` and `AA`.
  ///
  /// Available characters for rank are `A`, `K`, `Q`, `J`, `T`, `9`, `8`, `7`, `6`, `5`, `4`, `3` and `2`.
  factory HandRange.fromString(String value) {
    final components = Set<CardPairConvertable>();
    final matches = RegExp(
            r"[AKQJT98765432][shdc]?[AKQJT98765432](\+|[so]\+?|[shdc])?(-[AKQJT98765432][AKQJT98765432][so]?)?")
        .allMatches(value);

    for (final match in matches) {
      final token = match.group(0)!;

      // parse range parts like AKs-ATs
      if (token.length == 7) {
        final high = rankFromChar(token[0]);
        final kickerTop = rankFromChar(token[1]);
        final kickerBottom = rankFromChar(token[5]);

        for (int i = _ranks.indexOf(kickerTop);
            i <= _ranks.indexOf(kickerBottom);
            ++i) {
          if (token[2] == "s") {
            components.add(RankPair.suited(high, _ranks[i]));
          } else {
            components.add(RankPair.ofsuit(high, _ranks[i]));
          }
        }

        continue;
      }

      // parse range parts like QQ-55
      if (token.length == 5 && token[0] == token[1] && token[3] == token[4]) {
        final top = rankFromChar(token[0]);
        final bottom = rankFromChar(token[3]);

        for (int i = _ranks.indexOf(top); i <= _ranks.indexOf(bottom); ++i) {
          components.add(RankPair.ofsuit(_ranks[i], _ranks[i]));
        }

        continue;
      }

      // parse pocket range parts like 55+
      if (token.length == 3 && token[2] == "+" && token[0] == token[1]) {
        for (int i = 0; i <= _ranks.indexOf(rankFromChar(token[0])); ++i) {
          components.add(RankPair.ofsuit(_ranks[i], _ranks[i]));
        }

        continue;
      }

      // parse range parts like AJs+, AJ+
      if ((token.length == 3 && token[2] == "+" && token[0] != token[1]) ||
          (token.length == 4 && token[3] == "+")) {
        final high = rankFromChar(token[0]);
        final kicker = rankFromChar(token[1]);

        for (int i = _ranks.indexOf(high) + 1;
            i <= _ranks.indexOf(kicker);
            ++i) {
          if (token[2] == "s") {
            components.add(RankPair.suited(high, _ranks[i]));
          } else {
            components.add(RankPair.ofsuit(high, _ranks[i]));
          }
        }
        continue;
      }

      // example: AhKc
      if (token.length == 4 && token[3] != "+") {
        components.add(CardPair(
          Card.fromString(token.substring(0, 2)),
          Card.fromString(token.substring(2, 4)),
        ));

        continue;
      }

      final high = rankFromChar(token[0]);
      final kicker = rankFromChar(token[1]);

      // example: AJ, AJo
      if (token[2] == "s") {
        components.add(RankPair.suited(high, kicker));
      } else {
        if (high == kicker) {
          components.add(RankPair.ofsuit(high, kicker));
        } else {
          components.add(RankPair.ofsuit(high, kicker));
        }
      }
    }

    return HandRange(components);
  }

  final Set<CardPairConvertable> _components;

  @override
  Iterator<CardPair> get iterator => _components
      .fold<Set<CardPair>>(
        LinkedHashSet(),
        (set, component) => set..addAll(component.toCardPairs()),
      )
      .iterator;

  @override
  bool get isEmpty => _components.length == 0;

  @override
  String toString() {
    String result = "";

    int start = -1;
    for (int i = 0; i < _ranks.length; ++i) {
      if (_components.contains(RankPair.ofsuit(_ranks[i], _ranks[i]))) {
        if (start == -1) {
          start = i;
        }
      }

      if (start != -1 &&
          (i == _ranks.length - 1 ||
              !_components
                  .contains(RankPair.ofsuit(_ranks[i + 1], _ranks[i + 1])))) {
        if (start == i) {
          result += "${_ranks[i].char}${_ranks[i].char}";
        } else if (start == 0) {
          result += "${_ranks[i].char}${_ranks[i].char}+";
        } else {
          result +=
              "${_ranks[start].char}${_ranks[start].char}-${_ranks[i].char}${_ranks[i].char}";
        }

        start = -1;
      }
    }

    for (int h = 0; h < _ranks.length - 1; ++h) {
      int suitedStart = -1;
      int ofsuitStart = -1;

      for (int k = h + 1; k < _ranks.length; ++k) {
        if (_components.contains(RankPair.suited(_ranks[h], _ranks[k]))) {
          if (suitedStart == -1) {
            suitedStart = k;
          }
        }

        if (suitedStart != -1 &&
            (k == _ranks.length - 1 ||
                !_components
                    .contains(RankPair.suited(_ranks[h], _ranks[k + 1])))) {
          if (suitedStart == k) {
            result += "${_ranks[h].char}${_ranks[k].char}s";
          } else if (suitedStart == h + 1) {
            result += "${_ranks[h].char}${_ranks[k].char}s+";
          } else {
            result +=
                "${_ranks[h].char}${_ranks[suitedStart].char}s-${_ranks[h].char}${_ranks[k].char}s";
          }

          suitedStart = -1;
        }
      }

      for (int k = h + 1; k < _ranks.length; ++k) {
        if (_components.contains(RankPair.ofsuit(_ranks[h], _ranks[k]))) {
          if (ofsuitStart == -1) {
            ofsuitStart = k;
          }
        }

        if (ofsuitStart != -1 &&
            (k == _ranks.length - 1 ||
                !_components
                    .contains(RankPair.ofsuit(_ranks[h], _ranks[k + 1])))) {
          if (ofsuitStart == k) {
            result += "${_ranks[h].char}${_ranks[k].char}o";
          } else if (ofsuitStart == h + 1) {
            result += "${_ranks[h].char}${_ranks[k].char}o+";
          } else {
            result +=
                "${_ranks[h].char}${_ranks[ofsuitStart].char}o-${_ranks[h].char}${_ranks[k].char}o";
          }

          ofsuitStart = -1;
        }
      }
    }

    for (final cardPair in _components.whereType<CardPair>()) {
      result += "${cardPair._cardA}${cardPair._cardB}";
    }

    return result;
  }
}

/// An expression of a part composes [HandRange].
mixin CardPairConvertable implements Comparable {
  Set<CardPair> toCardPairs();

  @override
  int compareTo(dynamic other) {
    if (other is! CardPairConvertable) {
      return 0;
    }

    if (runtimeType != other.runtimeType) {
      return this is RankPair ? -1 : 1;
    }

    if (this is RankPair && other is RankPair) {
      final self = this as RankPair;

      if (self.high != other.high) {
        return self.high.powerIndex - other.high.powerIndex;
      }

      if (self.kicker != other.kicker) {
        return self.kicker.powerIndex - other.kicker.powerIndex;
      }

      if (self.isSuited && !other.isSuited) {
        return -1;
      }

      if (!self.isSuited && other.isSuited) {
        return 1;
      }

      return 0;
    }

    if (this is CardPair && other is CardPair) {
      final self = this as CardPair;

      if (self._cardA.rank != other._cardA.rank) {
        return self._cardA.rank.powerIndex - other._cardA.rank.powerIndex;
      }

      if (self._cardB.rank != other._cardB.rank) {
        return self._cardB.rank.powerIndex - other._cardB.rank.powerIndex;
      }

      if (self._cardA.suit != other._cardA.suit) {
        return self._cardA.suit.index - other._cardA.suit.index;
      }

      return self._cardB.suit.index - other._cardB.suit.index;
    }

    return 0;
  }
}

/// An expression of a part composes [HandRange]. It indicates a pair of [Card]s, "ace of spade and king of heart" for example.
///
/// ```dart
/// final cardPair = CardPair(Card(Rank.ace, Suit.spade), Card(Rank.king, heart));
///
/// cardPair.first;  // => Card(Rank.ace, Suit.spade)
/// cardPair.last;   // => Card(Rank.king, heart)
/// ```
///
/// You can use a CardPair to construct a HandRange.
///
/// ```dart
/// HandRange([
///   CardPair(Card(Rank.ace, Suit.spade), Card(Rank.king, heart)),
///   CardPair(Card(Rank.ace, Suit.spade), Card(Rank.queen, heart)),
/// ]);
/// ```
class CardPair with CardPairConvertable, IterableMixin<Card> {
  /// Creates a CardPair.
  CardPair(Card cardA, Card cardB)
      : _cardA = cardA.rank.powerIndex <= cardB.rank.powerIndex ? cardA : cardB,
        _cardB = cardA.rank.powerIndex <= cardB.rank.powerIndex ? cardB : cardA;

  final Card _cardA;

  final Card _cardB;

  @override
  Set<CardPair> toCardPairs() => {this};

  @override
  Iterator<Card> get iterator => [_cardA, _cardB].iterator;

  @override
  String toString() => "${_cardA}${_cardB}";

  operator ==(Object other) =>
      other is CardPair && _cardA == other._cardA && _cardB == other._cardB;

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + _cardA.hashCode;
    result = 37 * result + _cardB.hashCode;

    return result;
  }
}

/// An expression of a part composes [HandRange]. It indicates an abstract combination of [Card]s, things like "suited ace and king" or "pocket pair of jacks" for example.
///
/// ```dart
/// RankPair.suited(Rank.ace, Rank.king);
/// RankPair.ofsuit(Rank.jack, Rank.jack);
/// ```
///
/// You can use a RankPair to construct a HandRange.
///
/// ```dart
/// HandRange([
///   RankPair.suited(Rank.ace, Rank.king);
///   RankPair.ofsuit(Rank.jack, Rank.jack);
/// ]);
/// ```
@immutable
class RankPair with CardPairConvertable {
  /// Creates a suited RankPair.
  const RankPair.suited(this.high, this.kicker)
      : assert(high != kicker),
        isSuited = true;

  /// Creates a ofsuit RankPair.
  const RankPair.ofsuit(this.high, this.kicker) : isSuited = false;

  final Rank high;

  final Rank kicker;

  final bool isSuited;

  bool get isPocketPair => high == kicker;

  @override
  Set<CardPair> toCardPairs() => high == kicker
      ? {
          CardPair(
            Card(high, Suit.spade),
            Card(kicker, Suit.heart),
          ),
          CardPair(
            Card(high, Suit.spade),
            Card(kicker, Suit.diamond),
          ),
          CardPair(
            Card(high, Suit.spade),
            Card(kicker, Suit.club),
          ),
          CardPair(
            Card(high, Suit.heart),
            Card(kicker, Suit.diamond),
          ),
          CardPair(
            Card(high, Suit.heart),
            Card(kicker, Suit.club),
          ),
          CardPair(
            Card(high, Suit.diamond),
            Card(kicker, Suit.club),
          ),
        }
      : isSuited
          ? {
              CardPair(
                Card(high, Suit.spade),
                Card(kicker, Suit.spade),
              ),
              CardPair(
                Card(high, Suit.heart),
                Card(kicker, Suit.heart),
              ),
              CardPair(
                Card(high, Suit.diamond),
                Card(kicker, Suit.diamond),
              ),
              CardPair(
                Card(high, Suit.club),
                Card(kicker, Suit.club),
              ),
            }
          : {
              CardPair(
                Card(high, Suit.spade),
                Card(kicker, Suit.heart),
              ),
              CardPair(
                Card(high, Suit.spade),
                Card(kicker, Suit.diamond),
              ),
              CardPair(
                Card(high, Suit.spade),
                Card(kicker, Suit.club),
              ),
              CardPair(
                Card(high, Suit.heart),
                Card(kicker, Suit.spade),
              ),
              CardPair(
                Card(high, Suit.heart),
                Card(kicker, Suit.diamond),
              ),
              CardPair(
                Card(high, Suit.heart),
                Card(kicker, Suit.club),
              ),
              CardPair(
                Card(high, Suit.diamond),
                Card(kicker, Suit.spade),
              ),
              CardPair(
                Card(high, Suit.diamond),
                Card(kicker, Suit.heart),
              ),
              CardPair(
                Card(high, Suit.diamond),
                Card(kicker, Suit.club),
              ),
              CardPair(
                Card(high, Suit.club),
                Card(kicker, Suit.spade),
              ),
              CardPair(
                Card(high, Suit.club),
                Card(kicker, Suit.heart),
              ),
              CardPair(
                Card(high, Suit.club),
                Card(kicker, Suit.diamond),
              ),
            };

  @override
  String toString() =>
      "${high.char}${kicker.char}${isPocketPair ? "" : isSuited ? "s" : "o"}";

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + high.hashCode;
    result = 37 * result + kicker.hashCode;
    result = 37 * result + isSuited.hashCode;

    return result;
  }

  @override
  operator ==(Object other) =>
      other is RankPair &&
      other.high == high &&
      other.kicker == kicker &&
      other.isSuited == isSuited;
}

const List<Rank> _ranks = [
  Rank.ace,
  Rank.king,
  Rank.queen,
  Rank.jack,
  Rank.ten,
  Rank.nine,
  Rank.eight,
  Rank.seven,
  Rank.six,
  Rank.five,
  Rank.four,
  Rank.trey,
  Rank.deuce,
];
