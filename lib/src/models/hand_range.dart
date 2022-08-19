import 'dart:collection';
import 'package:meta/meta.dart';

import './card.dart';
import './immutable_card_set.dart';
import './rank.dart';
import './suit.dart';

/// An immutable set of [CardPair]s that expresses a player hand range.
@immutable
class HandRange {
  HandRange._({
    required Set<RankPair> pocketRankPairs,
    required Set<RankPair> suitedRankPairs,
    required Set<RankPair> ofsuitRankPairs,
    required Set<CardPair> individualCardPairs,
  })  : _pocketRankPairs = pocketRankPairs,
        _suitedRankPairs = suitedRankPairs,
        _ofsuitRankPairs = ofsuitRankPairs,
        _individualCardPairs = individualCardPairs;

  /// Created an empty [HandRange].
  const HandRange.empty()
      : _pocketRankPairs = const {},
        _suitedRankPairs = const {},
        _ofsuitRankPairs = const {},
        _individualCardPairs = const {};

  /// Creates a [HandRange] from an iterable of [CardPair].
  factory HandRange.fromCardPairs(Iterable<CardPair> cardPairs) {
    final cardPairSet = cardPairs.toSet();
    final pocketRankPairs = <RankPair>{};
    final suitedRankPairs = <RankPair>{};
    final ofsuitRankPairs = <RankPair>{};
    final individualCardPairs = <CardPair>{};

    for (final rank in _ranks) {
      final pocketCardPairs = RankPair.pocket(rank).toSet();

      if (pocketCardPairs.every((cp) => cardPairSet.contains(cp))) {
        cardPairSet.removeAll(pocketCardPairs);

        pocketRankPairs.add(RankPair.pocket(rank));
      }
    }

    for (int i = 0; i < _ranks.length; ++i) {
      final hr = _ranks[i];

      for (final kr in _ranks.sublist(i + 1)) {
        final suitedCardPairs = RankPair.suited(hr, kr).toSet();
        final ofsuitCardPairs = RankPair.ofsuit(hr, kr).toSet();

        if (suitedCardPairs.every((cp) => cardPairSet.contains(cp))) {
          cardPairSet.removeAll(suitedCardPairs);

          suitedRankPairs.add(RankPair.suited(hr, kr));
        }

        if (ofsuitCardPairs.every((cp) => cardPairSet.contains(cp))) {
          cardPairSet.removeAll(ofsuitCardPairs);

          ofsuitRankPairs.add(RankPair.ofsuit(hr, kr));
        }

        for (final hs in _suits) {
          for (final ks in _suits) {
            final cardPair = CardPair(Card(hr, hs), Card(kr, ks));

            if (cardPairSet.contains(cardPair)) {
              individualCardPairs.add(cardPair);
            }
          }
        }
      }
    }

    return HandRange._(
      pocketRankPairs: pocketRankPairs,
      suitedRankPairs: suitedRankPairs,
      ofsuitRankPairs: ofsuitRankPairs,
      individualCardPairs: individualCardPairs,
    );
  }

  /// Creates a [HandRange] from an iterable of [RankPair].
  factory HandRange.fromRankPairs(Iterable<RankPair> rankPairs) {
    final pocketRankPairs = <RankPair>{};
    final suitedRankPairs = <RankPair>{};
    final ofsuitRankPairs = <RankPair>{};

    for (final rankPair in rankPairs) {
      if (rankPair.isPocket) {
        pocketRankPairs.add(rankPair);

        continue;
      }

      if (rankPair.isSuited) {
        suitedRankPairs.add(rankPair);

        continue;
      }

      ofsuitRankPairs.add(rankPair);
    }

    return HandRange._(
      pocketRankPairs: pocketRankPairs,
      suitedRankPairs: suitedRankPairs,
      ofsuitRankPairs: ofsuitRankPairs,
      individualCardPairs: {},
    );
  }

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
    final pocketRankPairs = <RankPair>{};
    final suitedRankPairs = <RankPair>{};
    final ofsuitRankPairs = <RankPair>{};
    final individualCardPairs = <CardPair>{};

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
          pocketRankPairs.add(RankPair.pocket(_ranks[i]));
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

        if (high.power > kickerTop.power &&
            kickerTop.power > kickerBottom.power) {
          for (int i = _ranks.indexOf(kickerTop);
              i <= _ranks.indexOf(kickerBottom);
              ++i) {
            if (part[2] == 's') {
              suitedRankPairs.add(RankPair.suited(high, _ranks[i]));
            } else {
              ofsuitRankPairs.add(RankPair.ofsuit(high, _ranks[i]));
            }
          }

          continue;
        }
      }

      if (RegExp(r'^[AKQJT98765432]{2}\+$').hasMatch(part) &&
          part[0] == part[1]) {
        for (int i = 0; i <= _ranks.indexOf(Rank.parse(part[0])); ++i) {
          pocketRankPairs.add(RankPair.pocket(_ranks[i]));
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
          if (part[2] == 's') {
            suitedRankPairs.add(RankPair.suited(high, _ranks[i]));
          } else {
            ofsuitRankPairs.add(RankPair.ofsuit(high, _ranks[i]));
          }
        }

        continue;
      }

      if (RegExp(r'^[AKQJT98765432]{2}$').hasMatch(part) &&
          part[0] == part[1]) {
        pocketRankPairs.add(RankPair.pocket(Rank.parse(part[0])));

        continue;
      }

      if (RegExp(r'^[AKQJT98765432]{2}[so]$').hasMatch(part) &&
          part[0] != part[1]) {
        final high = Rank.parse(part[0]);
        final kicker = Rank.parse(part[1]);

        if (part[2] == 's') {
          suitedRankPairs.add(RankPair.suited(high, kicker));
        } else {
          ofsuitRankPairs.add(RankPair.ofsuit(high, kicker));
        }

        continue;
      }

      if (RegExp(r'^([AKQJT98765432][shdc]){2}$').hasMatch(part)) {
        individualCardPairs.add(CardPair.parse(part));

        continue;
      }

      throw HandRangeParseFailureException(whole: value, part: part);
    }

    return HandRange._(
      pocketRankPairs: pocketRankPairs,
      suitedRankPairs: suitedRankPairs,
      ofsuitRankPairs: ofsuitRankPairs,
      individualCardPairs: individualCardPairs,
    );
  }

  final Set<RankPair> _pocketRankPairs;

  final Set<RankPair> _suitedRankPairs;

  final Set<RankPair> _ofsuitRankPairs;

  final Set<CardPair> _individualCardPairs;

  Iterable<RankPair> get rankPairs sync* {
    for (final rankPair in _pocketRankPairs) {
      yield rankPair;
    }

    for (final rankPair in _suitedRankPairs) {
      yield rankPair;
    }

    for (final rankPair in _ofsuitRankPairs) {
      yield rankPair;
    }
  }

  Iterable<CardPair> get cardPairs sync* {
    for (final rankPair in _pocketRankPairs) {
      for (final cardPair in rankPair) {
        yield cardPair;
      }
    }

    for (final rankPair in _suitedRankPairs) {
      for (final cardPair in rankPair) {
        yield cardPair;
      }
    }

    for (final rankPair in _ofsuitRankPairs) {
      for (final cardPair in rankPair) {
        yield cardPair;
      }
    }

    for (final cardPair in _individualCardPairs) {
      yield cardPair;
    }
  }

  /// Whether it contains all [CardPair]s in the given [HandRange].
  bool contains(HandRange handRange) =>
      _pocketRankPairs.containsAll(handRange._pocketRankPairs) &&
      _suitedRankPairs.containsAll(handRange._suitedRankPairs) &&
      _ofsuitRankPairs.containsAll(handRange._ofsuitRankPairs) &&
      _individualCardPairs.containsAll(handRange._individualCardPairs);

  @override
  String toString() {
    String result = '';

    int start = -1;
    for (int i = 0; i < _ranks.length; ++i) {
      if (_pocketRankPairs.contains(RankPair.pocket(_ranks[i]))) {
        if (start == -1) {
          start = i;
        }
      }

      if (start != -1 &&
          (i == _ranks.length - 1 ||
              !_pocketRankPairs.contains(RankPair.pocket(_ranks[i + 1])))) {
        if (start == i) {
          result += '${_ranks[i]}${_ranks[i]}';
        } else if (start == 0) {
          result += '${_ranks[i]}${_ranks[i]}+';
        } else {
          result += '${_ranks[start]}${_ranks[start]}-${_ranks[i]}${_ranks[i]}';
        }

        start = -1;
      }
    }

    for (int h = 0; h < _ranks.length - 1; ++h) {
      int suitedStart = -1;
      int ofsuitStart = -1;

      for (int k = h + 1; k < _ranks.length; ++k) {
        if (_suitedRankPairs.contains(RankPair.suited(_ranks[h], _ranks[k])) &&
            suitedStart == -1) {
          suitedStart = k;
        }

        if (suitedStart != -1 &&
            (k == _ranks.length - 1 ||
                !_suitedRankPairs
                    .contains(RankPair.suited(_ranks[h], _ranks[k + 1])))) {
          if (suitedStart == k) {
            result += '${_ranks[h]}${_ranks[k]}s';
          } else if (suitedStart == h + 1) {
            result += '${_ranks[h]}${_ranks[k]}s+';
          } else {
            result +=
                '${_ranks[h]}${_ranks[suitedStart]}s-${_ranks[h]}${_ranks[k]}s';
          }

          suitedStart = -1;
        }
      }

      for (int k = h + 1; k < _ranks.length; ++k) {
        if (_ofsuitRankPairs.contains(RankPair.ofsuit(_ranks[h], _ranks[k])) &&
            ofsuitStart == -1) {
          ofsuitStart = k;
        }

        if (ofsuitStart != -1 &&
            (k == _ranks.length - 1 ||
                !_ofsuitRankPairs
                    .contains(RankPair.ofsuit(_ranks[h], _ranks[k + 1])))) {
          if (ofsuitStart == k) {
            result += '${_ranks[h]}${_ranks[k]}o';
          } else if (ofsuitStart == h + 1) {
            result += '${_ranks[h]}${_ranks[k]}o+';
          } else {
            result +=
                '${_ranks[h]}${_ranks[ofsuitStart]}o-${_ranks[h]}${_ranks[k]}o';
          }

          ofsuitStart = -1;
        }
      }
    }

    for (final cardPair in _individualCardPairs) {
      result += cardPair.toSortedString();
    }

    return result;
  }
}

/// A representation of combination of [CardPair]s.
@immutable
class RankPair with IterableMixin<CardPair> {
  /// Creates a pocket pairs of [RankPair].
  const RankPair.pocket(Rank rank)
      : high = rank,
        kicker = rank,
        isSuited = false;

  /// Creates a suited cards of [RankPair].
  const RankPair.suited(this.high, this.kicker) : isSuited = true;

  /// Creates a ofsuit cards of [RankPair].
  const RankPair.ofsuit(this.high, this.kicker) : isSuited = false;

  final Rank high;

  final Rank kicker;

  final bool isSuited;

  bool get isPocket => high == kicker;

  @override
  Iterator<CardPair> get iterator => toSet().iterator;

  @override
  Set<CardPair> toSet() {
    if (high == kicker) {
      return {
        CardPair(
          Card(kicker, Suit.spade),
          Card(kicker, Suit.heart),
        ),
        CardPair(
          Card(kicker, Suit.spade),
          Card(kicker, Suit.diamond),
        ),
        CardPair(
          Card(kicker, Suit.spade),
          Card(kicker, Suit.club),
        ),
        CardPair(
          Card(kicker, Suit.heart),
          Card(kicker, Suit.diamond),
        ),
        CardPair(
          Card(kicker, Suit.heart),
          Card(kicker, Suit.club),
        ),
        CardPair(
          Card(kicker, Suit.diamond),
          Card(kicker, Suit.club),
        ),
      };
    }

    if (isSuited) {
      return _suits
          .map((suit) => CardPair(
                Card(high, suit),
                Card(kicker, suit),
              ))
          .toSet();
    }

    return _suits.fold({}, (cardPairs, highSuit) {
      for (final kickerSuit in _suits) {
        if (highSuit == kickerSuit) continue;

        cardPairs.add(CardPair(
          Card(high, highSuit),
          Card(kicker, kickerSuit),
        ));
      }

      return cardPairs;
    });
  }

  @override
  bool operator ==(Object? other) =>
      other is RankPair &&
      other.high == high &&
      other.kicker == kicker &&
      other.isSuited == isSuited;

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + high.hashCode;
    result = 37 * result + kicker.hashCode;
    result = 37 * result + isSuited.hashCode;

    return result;
  }
}

class HandRangeParseFailureException implements Exception {
  HandRangeParseFailureException({required this.whole, this.part});

  final String whole;

  final String? part;

  String get message => part == null
      ? 'There\'s no valid hand range string expression in "$whole".'
      : '$part is invalid part of hand range string expression (whole: "$whole").';
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
