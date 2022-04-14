import "dart:collection";
import 'package:meta/meta.dart';
import "./card.dart";
import './immutable_card_set.dart';
import "./rank.dart";
import "./suit.dart";

/// An immutable set of [CardPair]s that expresses a player hand range.
@immutable
class HandRange with IterableMixin<CardPair> {
  /// Creates a [HandRange] from a [Set] of [CardPair].
  HandRange(Set<CardPair> cardPairs) : _cardPairs = cardPairs;

  /// Creates a [HandRange] from a [String].
  ///
  /// ```dart
  /// final handRange = HandRange.parse("AhKdAKsT9o55ATs+88+");
  /// ```
  ///
  /// This method expects a [String] that consists of following parts:
  /// - `AhKd` - Specific pair of cards. It will literally turn into a [CardPair].
  /// - `AKs` - All suited combination of [CardPair]s from two different ranks.
  /// - `T9o` - All ofsuit combination of [CardPair]s from two different ranks.
  /// - `66` - All pocket pair combination of [CardPair]s for a specific rank.
  /// - `ATs+` - All suited combination of [CardPair]s from a specific high rank and the kicker rank that is above than or equal. `ATs+` turn into equivalent of `ATs`, `AJs`, `AQs` and `AKs`.
  /// - `ATo+` - All ofsuit combination of [CardPair]s from a specific high rank and the kicker rank that is above than or equal. `ATo+` turn into equivalent of `ATo`, `AJo`, `AQo` and `AKo`.
  /// - `JJ+` - All pocket pairs above and equal than a specific rank. `JJ+` will turn into equivalent of `JJ`, `QQ`, `KK` and `AA`.
  ///
  /// Available characters for rank are `A`, `K`, `Q`, `J`, `T`, `9`, `8`, `7`, `6`, `5`, `4`, `3` and `2`.
  factory HandRange.parse(String value) {
    final cardPairs = Set<CardPair>();
    final regex = RegExp(
        r'[AKQJT98765432]{2}[so]?(-[AKQJT98765432]{2}[so]?|\+)?|([AKQJT98765432][shdc]){2}');
    int scanned = 0;

    while (true) {
      final match = regex.firstMatch(value.substring(scanned));

      if (match == null) {
        if (scanned < value.length) {
          if (scanned == 0) {
            throw HandRangeParseFailureException(whole: value);
          }

          throw HandRangeParseFailureException(
            whole: value,
            part: value.substring(scanned),
          );
        }

        break;
      }

      final part = match[0]!;
      scanned += part.length;

      if (RegExp(r'^[AKQJT98765432]{2}-[AKQJT98765432]{2}$').hasMatch(part) &&
          part[0] == part[1] &&
          part[3] == part[4]) {
        final top = Rank.parse(part[0]);
        final bottom = Rank.parse(part[3]);

        for (int i = _ranks.indexOf(top); i <= _ranks.indexOf(bottom); ++i) {
          for (final cardPair in _pocketCardPairs(_ranks[i])) {
            cardPairs.add(cardPair);
          }
        }

        continue;
      }

      if (RegExp(r'^[AKQJT98765432]{2}[so]-[AKQJT98765432]{2}[so]$')
              .hasMatch(part) &&
          part[0] == part[4] &&
          part[1] != part[5] &&
          part[2] == part[6]) {
        final high = Rank.parse(part[0]);
        final kickerTop = Rank.parse(part[1]);
        final kickerBottom = Rank.parse(part[5]);

        if (high.powerIndex < kickerTop.powerIndex &&
            kickerTop.powerIndex < kickerBottom.powerIndex) {
          for (int i = _ranks.indexOf(kickerTop);
              i <= _ranks.indexOf(kickerBottom);
              ++i) {
            if (part[2] == "s") {
              for (final cardPair in _suitedCardPairs(high, _ranks[i])) {
                cardPairs.add(cardPair);
              }
            } else {
              for (final cardPair in _ofsuitCardPairs(high, _ranks[i])) {
                cardPairs.add(cardPair);
              }
            }
          }

          continue;
        }
      }

      if (RegExp(r'^[AKQJT98765432]{2}\+$').hasMatch(part) &&
          part[0] == part[1]) {
        for (int i = 0; i <= _ranks.indexOf(Rank.parse(part[0])); ++i) {
          for (final cardPair in _pocketCardPairs(_ranks[i])) {
            cardPairs.add(cardPair);
          }
        }

        continue;
      }

      if (RegExp(r'^[AKQJT98765432]{2}[so]\+$').hasMatch(part) &&
          part[0] != part[1]) {
        final high = Rank.parse(part[0]);
        final kicker = Rank.parse(part[1]);

        for (int i = _ranks.indexOf(high) + 1;
            i <= _ranks.indexOf(kicker);
            ++i) {
          if (part[2] == "s") {
            for (final cardPair in _suitedCardPairs(high, _ranks[i])) {
              cardPairs.add(cardPair);
            }
          } else {
            for (final cardPair in _ofsuitCardPairs(high, _ranks[i])) {
              cardPairs.add(cardPair);
            }
          }
        }

        continue;
      }

      if (RegExp(r'^[AKQJT98765432]{2}$').hasMatch(part) &&
          part[0] == part[1]) {
        final rank = Rank.parse(part[0]);

        for (final cardPair in _pocketCardPairs(rank)) {
          cardPairs.add(cardPair);
        }

        continue;
      }

      if (RegExp(r'^[AKQJT98765432]{2}[so]$').hasMatch(part) &&
          part[0] != part[1]) {
        final high = Rank.parse(part[0]);
        final kicker = Rank.parse(part[1]);

        if (part[2] == "s") {
          for (final cardPair in _suitedCardPairs(high, kicker)) {
            cardPairs.add(cardPair);
          }
        } else {
          for (final cardPair in _ofsuitCardPairs(high, kicker)) {
            cardPairs.add(cardPair);
          }
        }

        continue;
      }

      if (RegExp(r'^([AKQJT98765432][shdc]){2}$').hasMatch(part)) {
        cardPairs.add(CardPair.parse(part));

        continue;
      }

      throw HandRangeParseFailureException(whole: value, part: part);
    }

    return HandRange(cardPairs);
  }

  final Set<CardPair> _cardPairs;

  @override
  Iterator<CardPair> get iterator => _cardPairs.iterator;

  @override
  bool get isEmpty => _cardPairs.length == 0;

  @override
  String toString() {
    final cardPairs = _cardPairs.toSet();
    final pocketParts = <String>{};
    final suitedParts = <String>{};
    final ofsuitParts = <String>{};
    final individualParts = <String>{};

    for (final rank in _ranks) {
      if ([..._pocketCardPairs(rank)].every((cp) => cardPairs.contains(cp))) {
        cardPairs.removeAll(_pocketCardPairs(rank));

        pocketParts.add("$rank$rank");
      }
    }

    for (int i = 0; i < _ranks.length; ++i) {
      final hr = _ranks[i];

      for (final kr in _ranks.sublist(i + 1)) {
        if ([..._suitedCardPairs(hr, kr)]
            .every((cp) => cardPairs.contains(cp))) {
          cardPairs.removeAll(_suitedCardPairs(hr, kr));

          suitedParts.add("$hr${kr}s");
        }

        if ([..._ofsuitCardPairs(hr, kr)]
            .every((cp) => cardPairs.contains(cp))) {
          cardPairs.removeAll(_ofsuitCardPairs(hr, kr));

          ofsuitParts.add("$hr${kr}o");
        }

        for (final hs in _suits) {
          for (final ks in _suits) {
            final cardPair =
                CardPair(Card(rank: hr, suit: hs), Card(rank: kr, suit: ks));

            if (cardPairs.contains(cardPair)) {
              individualParts.add(cardPair.toSortedString());
            }
          }
        }
      }
    }

    String result = "";

    int start = -1;
    for (int i = 0; i < _ranks.length; ++i) {
      if (pocketParts.contains("${_ranks[i]}${_ranks[i]}")) {
        if (start == -1) {
          start = i;
        }
      }

      if (start != -1 &&
          (i == _ranks.length - 1 ||
              !pocketParts.contains("${_ranks[i + 1]}${_ranks[i + 1]}"))) {
        if (start == i) {
          result += "${_ranks[i]}${_ranks[i]}";
        } else if (start == 0) {
          result += "${_ranks[i]}${_ranks[i]}+";
        } else {
          result += "${_ranks[start]}${_ranks[start]}-${_ranks[i]}${_ranks[i]}";
        }

        start = -1;
      }
    }

    for (int h = 0; h < _ranks.length - 1; ++h) {
      int suitedStart = -1;
      int ofsuitStart = -1;

      for (int k = h + 1; k < _ranks.length; ++k) {
        if (suitedParts.contains("${_ranks[h]}${_ranks[k]}s") &&
            suitedStart == -1) {
          suitedStart = k;
        }

        if (suitedStart != -1 &&
            (k == _ranks.length - 1 ||
                !suitedParts.contains("${_ranks[h]}${_ranks[k + 1]}s"))) {
          if (suitedStart == k) {
            result += "${_ranks[h]}${_ranks[k]}s";
          } else if (suitedStart == h + 1) {
            result += "${_ranks[h]}${_ranks[k]}s+";
          } else {
            result +=
                "${_ranks[h]}${_ranks[suitedStart]}s-${_ranks[h]}${_ranks[k]}s";
          }

          suitedStart = -1;
        }
      }

      for (int k = h + 1; k < _ranks.length; ++k) {
        if (ofsuitParts.contains("${_ranks[h]}${_ranks[k]}o") &&
            ofsuitStart == -1) {
          ofsuitStart = k;
        }

        if (ofsuitStart != -1 &&
            (k == _ranks.length - 1 ||
                !ofsuitParts.contains("${_ranks[h]}${_ranks[k + 1]}o"))) {
          if (ofsuitStart == k) {
            result += "${_ranks[h]}${_ranks[k]}o";
          } else if (ofsuitStart == h + 1) {
            result += "${_ranks[h]}${_ranks[k]}o+";
          } else {
            result +=
                "${_ranks[h]}${_ranks[ofsuitStart]}o-${_ranks[h]}${_ranks[k]}o";
          }

          ofsuitStart = -1;
        }
      }
    }

    for (final part in individualParts) {
      result += part;
    }

    return result;
  }
}

class HandRangeParseFailureException implements Exception {
  HandRangeParseFailureException({required this.whole, this.part});

  final String whole;

  final String? part;

  String get message => part == null
      ? "There's no valid hand range string expression in \"$whole\"."
      : "${part} is invalid part of hand range string expression (whole: \"$whole\").";
}

Iterable<CardPair> _pocketCardPairs(Rank rank) sync* {
  yield CardPair(
    Card(rank: rank, suit: Suit.spade),
    Card(rank: rank, suit: Suit.heart),
  );

  yield CardPair(
    Card(rank: rank, suit: Suit.spade),
    Card(rank: rank, suit: Suit.diamond),
  );

  yield CardPair(
    Card(rank: rank, suit: Suit.spade),
    Card(rank: rank, suit: Suit.club),
  );

  yield CardPair(
    Card(rank: rank, suit: Suit.heart),
    Card(rank: rank, suit: Suit.diamond),
  );

  yield CardPair(
    Card(rank: rank, suit: Suit.heart),
    Card(rank: rank, suit: Suit.club),
  );

  yield CardPair(
    Card(rank: rank, suit: Suit.diamond),
    Card(rank: rank, suit: Suit.club),
  );
}

Iterable<CardPair> _suitedCardPairs(
  Rank high,
  Rank kicker,
) sync* {
  for (final suit in _suits) {
    yield CardPair(
      Card(rank: high, suit: suit),
      Card(rank: kicker, suit: suit),
    );
  }
}

Iterable<CardPair> _ofsuitCardPairs(Rank high, Rank kicker) sync* {
  for (final highSuit in _suits) {
    for (final kickerSuit in _suits) {
      if (highSuit == kickerSuit) continue;

      yield CardPair(
        Card(rank: high, suit: highSuit),
        Card(rank: kicker, suit: kickerSuit),
      );
    }
  }
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

const List<Suit> _suits = [
  Suit.spade,
  Suit.heart,
  Suit.diamond,
  Suit.club,
];
