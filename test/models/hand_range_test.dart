// ignore_for_file: avoid_relative_lib_imports

import 'package:test/test.dart';
import '../../lib/src/models/card.dart';
import '../../lib/src/models/immutable_card_set.dart';
import '../../lib/src/models/hand_range.dart';
import '../../lib/src/models/rank.dart';
import '../../lib/src/models/suit.dart';

void main() {
  group('HandRange', () {
    group('HandRange.parse()', () {
      test(
        'HandRange.parse("88-66") returns a HandRange that contains the appropriate rank pairs',
        () {
          expect(
            HandRange.parse('88-66'),
            rankPairsEqual({
              RankPair.pocket(Rank.eight),
              RankPair.pocket(Rank.seven),
              RankPair.pocket(Rank.six),
            }),
          );
        },
      );

      test(
        'HandRange.parse("JJ+") returns  a HandRange that contains the appropriate rank pairs',
        () {
          expect(
            HandRange.parse('JJ+'),
            rankPairsEqual({
              RankPair.pocket(Rank.ace),
              RankPair.pocket(Rank.king),
              RankPair.pocket(Rank.queen),
              RankPair.pocket(Rank.jack),
            }),
          );
        },
      );

      test(
        'HandRange.parse("AQs-A9s") returns a HandRange that contains the appropriate rank pairs',
        () {
          expect(
            HandRange.parse('AQs-A9s'),
            rankPairsEqual({
              RankPair.suited(Rank.ace, Rank.queen),
              RankPair.suited(Rank.ace, Rank.jack),
              RankPair.suited(Rank.ace, Rank.ten),
              RankPair.suited(Rank.ace, Rank.nine),
            }),
          );
        },
      );

      test(
        'HandRange.parse("98o-96o") returns a HandRange that contains the appropriate rank pairs',
        () {
          expect(
            HandRange.parse('98o-96o'),
            rankPairsEqual({
              RankPair.ofsuit(Rank.nine, Rank.eight),
              RankPair.ofsuit(Rank.nine, Rank.seven),
              RankPair.ofsuit(Rank.nine, Rank.six),
            }),
          );
        },
      );

      test(
        'HandRange.parse("K8s+") returns a HandRange that contains the appropriate rank pairs',
        () {
          expect(
            HandRange.parse('K8s+'),
            rankPairsEqual({
              RankPair.suited(Rank.king, Rank.queen),
              RankPair.suited(Rank.king, Rank.jack),
              RankPair.suited(Rank.king, Rank.ten),
              RankPair.suited(Rank.king, Rank.nine),
              RankPair.suited(Rank.king, Rank.eight),
            }),
          );
        },
      );

      test(
        'HandRange.parse("ATo+") returns a HandRange that contains the appropriate rank pairs',
        () {
          expect(
            HandRange.parse('ATo+'),
            rankPairsEqual({
              RankPair.ofsuit(Rank.ace, Rank.king),
              RankPair.ofsuit(Rank.ace, Rank.queen),
              RankPair.ofsuit(Rank.ace, Rank.jack),
              RankPair.ofsuit(Rank.ace, Rank.ten),
            }),
          );
        },
      );

      test(
        'HandRange.parse("44") returns a HandRange that contains the appropriate rank pairs',
        () {
          expect(
            HandRange.parse('44'),
            rankPairsEqual({RankPair.pocket(Rank.four)}),
          );
        },
      );

      test(
        'HandRange.parse("JTs") returns a HandRange that contains the appropriate rank pairs',
        () {
          expect(
            HandRange.parse('JTs'),
            rankPairsEqual({RankPair.suited(Rank.jack, Rank.ten)}),
          );
        },
      );

      test(
        'HandRange.parse("72o") returns a HandRange that contains the appropriate rank pairs',
        () {
          expect(
            HandRange.parse('72o'),
            rankPairsEqual({RankPair.ofsuit(Rank.seven, Rank.deuce)}),
          );
        },
      );

      test(
        'HandRange.parse("AsKs") returns a HandRange that contains the appropriate card pairs',
        () {
          expect(
            HandRange.parse('AsKs'),
            cardPairsEqual({
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.king, Suit.spade),
              ),
            }),
          );
        },
      );

      test(
        'HandRange.parse("7d6h") returns a HandRange that contains the appropriate card pairs',
        () {
          expect(
            HandRange.parse('7d6h'),
            cardPairsEqual({
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.six, Suit.heart),
              ),
            }),
          );
        },
      );

      test(
        'HandRange.parse("88-66JJ+44AQs-A9s98o-96oK8s+ATo+JTs72oAsKs7d6h") returns a HandRange that contains the appropriate rank pairs and card pairs',
        () {
          final handRange =
              HandRange.parse('88-66JJ+44AQs-A9s98o-96oK8s+ATo+JTs72oAsKs7d6h');

          expect(
            handRange,
            rankPairsEqual({
              RankPair.pocket(Rank.ace),
              RankPair.pocket(Rank.king),
              RankPair.pocket(Rank.queen),
              RankPair.pocket(Rank.jack),
              RankPair.pocket(Rank.eight),
              RankPair.pocket(Rank.seven),
              RankPair.pocket(Rank.six),
              RankPair.pocket(Rank.four),
              RankPair.suited(Rank.ace, Rank.queen),
              RankPair.suited(Rank.ace, Rank.jack),
              RankPair.suited(Rank.ace, Rank.ten),
              RankPair.suited(Rank.ace, Rank.nine),
              RankPair.suited(Rank.king, Rank.queen),
              RankPair.suited(Rank.king, Rank.jack),
              RankPair.suited(Rank.king, Rank.ten),
              RankPair.suited(Rank.king, Rank.nine),
              RankPair.suited(Rank.king, Rank.eight),
              RankPair.suited(Rank.jack, Rank.ten),
              RankPair.ofsuit(Rank.ace, Rank.king),
              RankPair.ofsuit(Rank.ace, Rank.queen),
              RankPair.ofsuit(Rank.ace, Rank.jack),
              RankPair.ofsuit(Rank.ace, Rank.ten),
              RankPair.ofsuit(Rank.nine, Rank.eight),
              RankPair.ofsuit(Rank.nine, Rank.seven),
              RankPair.ofsuit(Rank.nine, Rank.six),
              RankPair.ofsuit(Rank.seven, Rank.deuce),
            }),
          );
          expect(
            handRange,
            cardPairsEqual({
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.ace, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.ace, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.ace, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.ace, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.ace, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.ace, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.spade),
                Card(Rank.king, Suit.diamond),
              ),
              CardPair(
                Card(Rank.king, Suit.spade),
                Card(Rank.king, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.heart),
                Card(Rank.king, Suit.diamond),
              ),
              CardPair(
                Card(Rank.king, Suit.heart),
                Card(Rank.king, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.diamond),
                Card(Rank.king, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.spade),
                Card(Rank.king, Suit.heart),
              ),
              CardPair(
                Card(Rank.king, Suit.club),
                Card(Rank.queen, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.spade),
                Card(Rank.queen, Suit.spade),
              ),
              CardPair(
                Card(Rank.king, Suit.heart),
                Card(Rank.queen, Suit.heart),
              ),
              CardPair(
                Card(Rank.king, Suit.diamond),
                Card(Rank.queen, Suit.diamond),
              ),
              CardPair(
                Card(Rank.queen, Suit.diamond),
                Card(Rank.queen, Suit.club),
              ),
              CardPair(
                Card(Rank.queen, Suit.heart),
                Card(Rank.queen, Suit.diamond),
              ),
              CardPair(
                Card(Rank.queen, Suit.heart),
                Card(Rank.queen, Suit.club),
              ),
              CardPair(
                Card(Rank.queen, Suit.spade),
                Card(Rank.queen, Suit.club),
              ),
              CardPair(
                Card(Rank.queen, Suit.spade),
                Card(Rank.queen, Suit.heart),
              ),
              CardPair(
                Card(Rank.queen, Suit.spade),
                Card(Rank.queen, Suit.diamond),
              ),
              CardPair(
                Card(Rank.king, Suit.heart),
                Card(Rank.jack, Suit.heart),
              ),
              CardPair(
                Card(Rank.king, Suit.spade),
                Card(Rank.jack, Suit.spade),
              ),
              CardPair(
                Card(Rank.king, Suit.club),
                Card(Rank.jack, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.diamond),
                Card(Rank.jack, Suit.diamond),
              ),
              CardPair(
                Card(Rank.jack, Suit.spade),
                Card(Rank.jack, Suit.heart),
              ),
              CardPair(
                Card(Rank.jack, Suit.spade),
                Card(Rank.jack, Suit.diamond),
              ),
              CardPair(
                Card(Rank.jack, Suit.spade),
                Card(Rank.jack, Suit.club),
              ),
              CardPair(
                Card(Rank.jack, Suit.heart),
                Card(Rank.jack, Suit.diamond),
              ),
              CardPair(
                Card(Rank.jack, Suit.heart),
                Card(Rank.jack, Suit.club),
              ),
              CardPair(
                Card(Rank.eight, Suit.spade),
                Card(Rank.eight, Suit.heart),
              ),
              CardPair(
                Card(Rank.eight, Suit.spade),
                Card(Rank.eight, Suit.diamond),
              ),
              CardPair(
                Card(Rank.eight, Suit.heart),
                Card(Rank.eight, Suit.diamond),
              ),
              CardPair(
                Card(Rank.eight, Suit.heart),
                Card(Rank.eight, Suit.club),
              ),
              CardPair(
                Card(Rank.eight, Suit.diamond),
                Card(Rank.eight, Suit.club),
              ),
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.seven, Suit.club),
              ),
              CardPair(
                Card(Rank.seven, Suit.spade),
                Card(Rank.seven, Suit.heart),
              ),
              CardPair(
                Card(Rank.seven, Suit.spade),
                Card(Rank.seven, Suit.diamond),
              ),
              CardPair(
                Card(Rank.seven, Suit.heart),
                Card(Rank.seven, Suit.diamond),
              ),
              CardPair(
                Card(Rank.seven, Suit.heart),
                Card(Rank.seven, Suit.club),
              ),
              CardPair(
                Card(Rank.six, Suit.spade),
                Card(Rank.six, Suit.heart),
              ),
              CardPair(
                Card(Rank.six, Suit.spade),
                Card(Rank.six, Suit.diamond),
              ),
              CardPair(
                Card(Rank.six, Suit.spade),
                Card(Rank.six, Suit.club),
              ),
              CardPair(
                Card(Rank.six, Suit.heart),
                Card(Rank.six, Suit.club),
              ),
              CardPair(
                Card(Rank.six, Suit.diamond),
                Card(Rank.six, Suit.club),
              ),
              CardPair(
                Card(Rank.six, Suit.heart),
                Card(Rank.six, Suit.diamond),
              ),
              CardPair(
                Card(Rank.four, Suit.spade),
                Card(Rank.four, Suit.diamond),
              ),
              CardPair(
                Card(Rank.four, Suit.spade),
                Card(Rank.four, Suit.club),
              ),
              CardPair(
                Card(Rank.four, Suit.heart),
                Card(Rank.four, Suit.diamond),
              ),
              CardPair(
                Card(Rank.four, Suit.heart),
                Card(Rank.four, Suit.club),
              ),
              CardPair(
                Card(Rank.four, Suit.diamond),
                Card(Rank.four, Suit.club),
              ),
              CardPair(
                Card(Rank.four, Suit.spade),
                Card(Rank.four, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.king, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.king, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.king, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.king, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.king, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.king, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.king, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.king, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.king, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.king, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.king, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.king, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.king, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.queen, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.queen, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.queen, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.queen, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.queen, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.queen, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.queen, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.queen, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.queen, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.queen, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.queen, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.queen, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.queen, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.queen, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.queen, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.queen, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.jack, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.jack, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.jack, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.jack, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.jack, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.jack, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.jack, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.jack, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.jack, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.jack, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.jack, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.jack, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.jack, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.jack, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.jack, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.jack, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.ten, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.ten, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.ten, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.ten, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.ten, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.ten, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.ten, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.ten, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.ten, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.ten, Suit.heart),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.ten, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.ten, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.ten, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.ten, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.ten, Suit.club),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.ten, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.nine, Suit.spade),
              ),
              CardPair(
                Card(Rank.ace, Suit.diamond),
                Card(Rank.nine, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.club),
                Card(Rank.nine, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.club),
                Card(Rank.ten, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.diamond),
                Card(Rank.ten, Suit.diamond),
              ),
              CardPair(
                Card(Rank.king, Suit.heart),
                Card(Rank.ten, Suit.heart),
              ),
              CardPair(
                Card(Rank.king, Suit.spade),
                Card(Rank.ten, Suit.spade),
              ),
              CardPair(
                Card(Rank.jack, Suit.diamond),
                Card(Rank.jack, Suit.club),
              ),
              CardPair(
                Card(Rank.jack, Suit.heart),
                Card(Rank.ten, Suit.heart),
              ),
              CardPair(
                Card(Rank.jack, Suit.spade),
                Card(Rank.ten, Suit.spade),
              ),
              CardPair(
                Card(Rank.jack, Suit.club),
                Card(Rank.ten, Suit.club),
              ),
              CardPair(
                Card(Rank.jack, Suit.diamond),
                Card(Rank.ten, Suit.diamond),
              ),
              CardPair(
                Card(Rank.ace, Suit.heart),
                Card(Rank.nine, Suit.heart),
              ),
              CardPair(
                Card(Rank.king, Suit.spade),
                Card(Rank.nine, Suit.spade),
              ),
              CardPair(
                Card(Rank.king, Suit.heart),
                Card(Rank.nine, Suit.heart),
              ),
              CardPair(
                Card(Rank.king, Suit.diamond),
                Card(Rank.nine, Suit.diamond),
              ),
              CardPair(
                Card(Rank.king, Suit.club),
                Card(Rank.nine, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.club),
                Card(Rank.eight, Suit.club),
              ),
              CardPair(
                Card(Rank.king, Suit.spade),
                Card(Rank.eight, Suit.spade),
              ),
              CardPair(
                Card(Rank.king, Suit.heart),
                Card(Rank.eight, Suit.heart),
              ),
              CardPair(
                Card(Rank.king, Suit.diamond),
                Card(Rank.eight, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.spade),
                Card(Rank.eight, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.club),
                Card(Rank.eight, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.club),
                Card(Rank.eight, Suit.heart),
              ),
              CardPair(
                Card(Rank.nine, Suit.club),
                Card(Rank.eight, Suit.spade),
              ),
              CardPair(
                Card(Rank.nine, Suit.diamond),
                Card(Rank.eight, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.diamond),
                Card(Rank.eight, Suit.heart),
              ),
              CardPair(
                Card(Rank.nine, Suit.diamond),
                Card(Rank.eight, Suit.spade),
              ),
              CardPair(
                Card(Rank.nine, Suit.heart),
                Card(Rank.eight, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.heart),
                Card(Rank.eight, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.heart),
                Card(Rank.eight, Suit.spade),
              ),
              CardPair(
                Card(Rank.nine, Suit.spade),
                Card(Rank.eight, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.spade),
                Card(Rank.eight, Suit.heart),
              ),
              CardPair(
                Card(Rank.nine, Suit.club),
                Card(Rank.seven, Suit.spade),
              ),
              CardPair(
                Card(Rank.nine, Suit.diamond),
                Card(Rank.seven, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.diamond),
                Card(Rank.seven, Suit.heart),
              ),
              CardPair(
                Card(Rank.nine, Suit.diamond),
                Card(Rank.seven, Suit.spade),
              ),
              CardPair(
                Card(Rank.nine, Suit.heart),
                Card(Rank.seven, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.heart),
                Card(Rank.seven, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.spade),
                Card(Rank.seven, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.spade),
                Card(Rank.seven, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.spade),
                Card(Rank.seven, Suit.heart),
              ),
              CardPair(
                Card(Rank.nine, Suit.club),
                Card(Rank.seven, Suit.heart),
              ),
              CardPair(
                Card(Rank.nine, Suit.heart),
                Card(Rank.seven, Suit.spade),
              ),
              CardPair(
                Card(Rank.eight, Suit.spade),
                Card(Rank.eight, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.club),
                Card(Rank.seven, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.diamond),
                Card(Rank.six, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.club),
                Card(Rank.six, Suit.spade),
              ),
              CardPair(
                Card(Rank.nine, Suit.club),
                Card(Rank.six, Suit.heart),
              ),
              CardPair(
                Card(Rank.nine, Suit.spade),
                Card(Rank.six, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.spade),
                Card(Rank.six, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.spade),
                Card(Rank.six, Suit.heart),
              ),
              CardPair(
                Card(Rank.nine, Suit.heart),
                Card(Rank.six, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.diamond),
                Card(Rank.six, Suit.heart),
              ),
              CardPair(
                Card(Rank.nine, Suit.diamond),
                Card(Rank.six, Suit.spade),
              ),
              CardPair(
                Card(Rank.nine, Suit.heart),
                Card(Rank.six, Suit.club),
              ),
              CardPair(
                Card(Rank.nine, Suit.club),
                Card(Rank.six, Suit.diamond),
              ),
              CardPair(
                Card(Rank.nine, Suit.heart),
                Card(Rank.six, Suit.spade),
              ),
              CardPair(
                Card(Rank.seven, Suit.spade),
                Card(Rank.seven, Suit.club),
              ),
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.six, Suit.heart),
              ),
              CardPair(
                Card(Rank.seven, Suit.spade),
                Card(Rank.deuce, Suit.club),
              ),
              CardPair(
                Card(Rank.seven, Suit.heart),
                Card(Rank.deuce, Suit.diamond),
              ),
              CardPair(
                Card(Rank.seven, Suit.spade),
                Card(Rank.deuce, Suit.diamond),
              ),
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.deuce, Suit.spade),
              ),
              CardPair(
                Card(Rank.seven, Suit.heart),
                Card(Rank.deuce, Suit.club),
              ),
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.deuce, Suit.heart),
              ),
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.deuce, Suit.club),
              ),
              CardPair(
                Card(Rank.seven, Suit.club),
                Card(Rank.deuce, Suit.spade),
              ),
              CardPair(
                Card(Rank.seven, Suit.club),
                Card(Rank.deuce, Suit.heart),
              ),
              CardPair(
                Card(Rank.seven, Suit.club),
                Card(Rank.deuce, Suit.diamond),
              ),
              CardPair(
                Card(Rank.seven, Suit.spade),
                Card(Rank.deuce, Suit.heart),
              ),
              CardPair(
                Card(Rank.seven, Suit.heart),
                Card(Rank.deuce, Suit.spade),
              ),
            }),
          );
        },
      );

      test(
        'HandRange.parse("") returns an empty hand range',
        () {
          expect(HandRange.parse(''), rankPairsEqual({}));
        },
      );

      test(
        'throws an error because "qwe" doesn\'t have any valid expression',
        () {
          expect(() {
            HandRange.parse('qwe');
          }, throwsA(isA<HandRangeParseFailureException>()));
        },
      );

      test(
        'throws an error because "AKTo+" contains an invalid expression',
        () {
          expect(() {
            HandRange.parse('AKTo+');
          }, throwsA(isA<HandRangeParseFailureException>()));
        },
      );

      test(
        'throws an error because "JJ++" contains an invalid expression',
        () {
          expect(() {
            HandRange.parse('JJ++');
          }, throwsA(isA<HandRangeParseFailureException>()));
        },
      );
    });

    group('HandRange.fromCardPairs()', () {
      test('it creates a HandRange from the given sequence of ImmutableCardSet',
          () {
        final cardSets = {
          CardPair(
            Card(Rank.ace, Suit.spade),
            Card(Rank.deuce, Suit.club),
          ),
          CardPair(
            Card(Rank.five, Suit.heart),
            Card(Rank.six, Suit.spade),
          ),
          CardPair(
            Card(Rank.jack, Suit.club),
            Card(Rank.queen, Suit.diamond),
          ),
          CardPair(
            Card(Rank.six, Suit.spade),
            Card(Rank.five, Suit.heart),
          ),
          CardPair(
            Card(Rank.ace, Suit.spade),
            Card(Rank.deuce, Suit.diamond),
          ),
        };
        final nonDuplicatedCardSets = {
          CardPair(
            Card(Rank.ace, Suit.spade),
            Card(Rank.deuce, Suit.club),
          ),
          CardPair(
            Card(Rank.five, Suit.heart),
            Card(Rank.six, Suit.spade),
          ),
          CardPair(
            Card(Rank.jack, Suit.club),
            Card(Rank.queen, Suit.diamond),
          ),
          CardPair(
            Card(Rank.ace, Suit.spade),
            Card(Rank.deuce, Suit.diamond),
          ),
        };

        expect(
          HandRange.fromCardPairs(cardSets).cardPairs.toList(),
          equals(nonDuplicatedCardSets),
        );
      });
    });

    group('HandRange#toString()', () {
      test('HandRange<88-66>.toString() returns "88-66"', () {
        expect(
          HandRange.fromCardPairs({
            CardPair(
              Card(Rank.eight, Suit.spade),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.eight, Suit.spade),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.eight, Suit.spade),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.eight, Suit.heart),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.eight, Suit.heart),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.eight, Suit.diamond),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.diamond),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.six, Suit.spade),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.six, Suit.spade),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.six, Suit.spade),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.six, Suit.heart),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.six, Suit.heart),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.six, Suit.diamond),
              Card(Rank.six, Suit.club),
            ),
          }).toString(),
          equals('88-66'),
        );
      });

      test('HandRange<JJ+>.toString() returns "JJ+"', () {
        expect(
          HandRange.fromCardPairs({
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ace, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ace, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ace, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ace, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ace, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ace, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.king, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.queen, Suit.spade),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.queen, Suit.spade),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.queen, Suit.spade),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.queen, Suit.heart),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.queen, Suit.heart),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.queen, Suit.diamond),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.jack, Suit.club),
            ),
          }).toString(),
          equals('JJ+'),
        );
      });

      test('HandRange<44>.toString() returns "44"', () {
        expect(
            HandRange.fromCardPairs({
              CardPair(
                Card(Rank.four, Suit.spade),
                Card(Rank.four, Suit.heart),
              ),
              CardPair(
                Card(Rank.four, Suit.spade),
                Card(Rank.four, Suit.diamond),
              ),
              CardPair(
                Card(Rank.four, Suit.spade),
                Card(Rank.four, Suit.club),
              ),
              CardPair(
                Card(Rank.four, Suit.heart),
                Card(Rank.four, Suit.diamond),
              ),
              CardPair(
                Card(Rank.four, Suit.heart),
                Card(Rank.four, Suit.club),
              ),
              CardPair(
                Card(Rank.four, Suit.diamond),
                Card(Rank.four, Suit.club),
              ),
            }).toString(),
            equals('44'));
      });

      test('HandRange<AQs-A9s>.toString() returns "AQs-A9s"', () {
        expect(
          HandRange.fromCardPairs({
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.nine, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.nine, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.nine, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.nine, Suit.club),
            ),
          }).toString(),
          equals('AQs-A9s'),
        );
      });

      test('HandRange<J9o-J6o>.toString() returns "J9o-J6o"', () {
        expect(
          HandRange.fromCardPairs({
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.nine, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.nine, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.nine, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.nine, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.nine, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.nine, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.nine, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.nine, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.nine, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.nine, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.nine, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.nine, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.seven, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.seven, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.seven, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.six, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.six, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.six, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.six, Suit.diamond),
            ),
          }).toString(),
          equals('J9o-J6o'),
        );
      });

      test('HandRange<98o-96o>.toString() returns "96o+"', () {
        expect(
          HandRange.fromCardPairs({
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.seven, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.seven, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.seven, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.six, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.six, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.six, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.six, Suit.diamond),
            ),
          }).toString(),
          equals('96o+'),
        );
      });

      test('HandRange<K8s+>.toString() returns "K8s+"', () {
        expect(
          HandRange.fromCardPairs({
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.nine, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.nine, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.nine, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.nine, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.eight, Suit.club),
            ),
          }).toString(),
          equals('K8s+'),
        );
      });

      test('HandRange<ATo+>.toString() returns "ATo+"', () {
        expect(
          HandRange.fromCardPairs({
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.king, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.king, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.king, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.king, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.king, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.king, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.ten, Suit.diamond),
            ),
          }).toString(),
          equals('ATo+'),
        );
      });

      test('HandRange<JTs>.toString() returns "JTs"', () {
        expect(
          HandRange.fromCardPairs({
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.ten, Suit.club),
            ),
          }).toString(),
          equals('JTs'),
        );
      });

      test('HandRange<72o>.toString() returns "72o"', () {
        expect(
            HandRange.fromCardPairs({
              CardPair(
                Card(Rank.seven, Suit.spade),
                Card(Rank.deuce, Suit.heart),
              ),
              CardPair(
                Card(Rank.seven, Suit.spade),
                Card(Rank.deuce, Suit.diamond),
              ),
              CardPair(
                Card(Rank.seven, Suit.spade),
                Card(Rank.deuce, Suit.club),
              ),
              CardPair(
                Card(Rank.seven, Suit.heart),
                Card(Rank.deuce, Suit.spade),
              ),
              CardPair(
                Card(Rank.seven, Suit.heart),
                Card(Rank.deuce, Suit.diamond),
              ),
              CardPair(
                Card(Rank.seven, Suit.heart),
                Card(Rank.deuce, Suit.club),
              ),
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.deuce, Suit.spade),
              ),
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.deuce, Suit.heart),
              ),
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.deuce, Suit.club),
              ),
              CardPair(
                Card(Rank.seven, Suit.club),
                Card(Rank.deuce, Suit.spade),
              ),
              CardPair(
                Card(Rank.seven, Suit.club),
                Card(Rank.deuce, Suit.heart),
              ),
              CardPair(
                Card(Rank.seven, Suit.club),
                Card(Rank.deuce, Suit.diamond),
              ),
            }).toString(),
            equals('72o'));
      });

      test('HandRange<AsKs>.toString() returns "AsKs"', () {
        expect(
            HandRange.fromCardPairs({
              CardPair(
                Card(Rank.ace, Suit.spade),
                Card(Rank.king, Suit.spade),
              )
            }).toString(),
            equals('AsKs'));
      });

      test('HandRange<7d6h>.toString() returns "7d6h"', () {
        expect(
            HandRange.fromCardPairs({
              CardPair(
                Card(Rank.seven, Suit.diamond),
                Card(Rank.six, Suit.heart),
              )
            }).toString(),
            equals('7d6h'));
      });

      test(
          'HandRange<88-66JJ+44AQs-A9s98o-96oK8s+ATo+JTs72o7d6hAsKs>.toString() returns "JJ+88-6644AQs-A9sATo+K8s+JTs96o+72oAsKs7d6h"',
          () {
        expect(
          HandRange.fromCardPairs({
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ace, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ace, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ace, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ace, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ace, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ace, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.king, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.queen, Suit.diamond),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.queen, Suit.heart),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.queen, Suit.heart),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.queen, Suit.spade),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.queen, Suit.spade),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.queen, Suit.spade),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.eight, Suit.spade),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.eight, Suit.spade),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.eight, Suit.heart),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.eight, Suit.heart),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.eight, Suit.diamond),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.diamond),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.six, Suit.spade),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.six, Suit.spade),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.six, Suit.spade),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.six, Suit.heart),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.six, Suit.diamond),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.six, Suit.heart),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.four, Suit.spade),
              Card(Rank.four, Suit.diamond),
            ),
            CardPair(
              Card(Rank.four, Suit.spade),
              Card(Rank.four, Suit.club),
            ),
            CardPair(
              Card(Rank.four, Suit.heart),
              Card(Rank.four, Suit.diamond),
            ),
            CardPair(
              Card(Rank.four, Suit.heart),
              Card(Rank.four, Suit.club),
            ),
            CardPair(
              Card(Rank.four, Suit.diamond),
              Card(Rank.four, Suit.club),
            ),
            CardPair(
              Card(Rank.four, Suit.spade),
              Card(Rank.four, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.king, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.king, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.king, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.king, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.king, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.king, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.king, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.queen, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.queen, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.queen, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.queen, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.jack, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.jack, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.jack, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.spade),
              Card(Rank.nine, Suit.spade),
            ),
            CardPair(
              Card(Rank.ace, Suit.diamond),
              Card(Rank.nine, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.club),
              Card(Rank.nine, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.jack, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.heart),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.jack, Suit.spade),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.jack, Suit.club),
              Card(Rank.ten, Suit.club),
            ),
            CardPair(
              Card(Rank.jack, Suit.diamond),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.ace, Suit.heart),
              Card(Rank.nine, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.nine, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.nine, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.nine, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.nine, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.eight, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.eight, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.eight, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.seven, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.seven, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.seven, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.seven, Suit.spade),
            ),
            CardPair(
              Card(Rank.eight, Suit.spade),
              Card(Rank.eight, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.seven, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.six, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.spade),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.nine, Suit.diamond),
              Card(Rank.six, Suit.spade),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.six, Suit.club),
            ),
            CardPair(
              Card(Rank.nine, Suit.club),
              Card(Rank.six, Suit.diamond),
            ),
            CardPair(
              Card(Rank.nine, Suit.heart),
              Card(Rank.six, Suit.spade),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.seven, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.diamond),
              Card(Rank.six, Suit.heart),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.deuce, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.deuce, Suit.diamond),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.deuce, Suit.diamond),
            ),
            CardPair(
              Card(Rank.seven, Suit.diamond),
              Card(Rank.deuce, Suit.spade),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.deuce, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.diamond),
              Card(Rank.deuce, Suit.heart),
            ),
            CardPair(
              Card(Rank.seven, Suit.diamond),
              Card(Rank.deuce, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.club),
              Card(Rank.deuce, Suit.spade),
            ),
            CardPair(
              Card(Rank.seven, Suit.club),
              Card(Rank.deuce, Suit.heart),
            ),
            CardPair(
              Card(Rank.seven, Suit.club),
              Card(Rank.deuce, Suit.diamond),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.deuce, Suit.heart),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.deuce, Suit.spade),
            ),
          }).toString(),
          equals('JJ+88-6644AQs-A9sATo+K8s+JTs96o+72oAsKs7d6h'),
        );
      });

      test('HandRange<>.toString() returns ""', () {
        expect(HandRange.empty().toString(), equals(''));
      });
    });
  });

  group('RankPair', () {
    test(
      'RankPair is an iterable of CardPair that covers all the combinations (pocket)',
      () {
        final rankPair = RankPair.pocket(Rank.king);

        expect(rankPair, hasLength(6));
        expect(
          rankPair,
          containsAll({
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.king, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.king, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.king, Suit.club),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.king, Suit.club),
            ),
          }),
        );
      },
    );

    test(
      'RankPair is an iterable of CardPair that covers all the combinations (suited)',
      () {
        final rankPair = RankPair.suited(Rank.king, Rank.ten);

        expect(rankPair, hasLength(4));
        expect(
          rankPair,
          containsAll({
            CardPair(
              Card(Rank.king, Suit.spade),
              Card(Rank.ten, Suit.spade),
            ),
            CardPair(
              Card(Rank.king, Suit.heart),
              Card(Rank.ten, Suit.heart),
            ),
            CardPair(
              Card(Rank.king, Suit.diamond),
              Card(Rank.ten, Suit.diamond),
            ),
            CardPair(
              Card(Rank.king, Suit.club),
              Card(Rank.ten, Suit.club),
            ),
          }),
        );
      },
    );

    test(
      'RankPair is an iterable of CardPair that covers all the combinations (ofsuit)',
      () {
        final rankPair = RankPair.ofsuit(Rank.seven, Rank.deuce);

        expect(rankPair, hasLength(12));
        expect(
          rankPair,
          containsAll({
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.deuce, Suit.heart),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.deuce, Suit.diamond),
            ),
            CardPair(
              Card(Rank.seven, Suit.spade),
              Card(Rank.deuce, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.deuce, Suit.spade),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.deuce, Suit.diamond),
            ),
            CardPair(
              Card(Rank.seven, Suit.heart),
              Card(Rank.deuce, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.diamond),
              Card(Rank.deuce, Suit.spade),
            ),
            CardPair(
              Card(Rank.seven, Suit.diamond),
              Card(Rank.deuce, Suit.heart),
            ),
            CardPair(
              Card(Rank.seven, Suit.diamond),
              Card(Rank.deuce, Suit.club),
            ),
            CardPair(
              Card(Rank.seven, Suit.club),
              Card(Rank.deuce, Suit.spade),
            ),
            CardPair(
              Card(Rank.seven, Suit.club),
              Card(Rank.deuce, Suit.heart),
            ),
            CardPair(
              Card(Rank.seven, Suit.club),
              Card(Rank.deuce, Suit.diamond),
            ),
          }),
        );
      },
    );
  });
}

class _HasRankPairs extends CustomMatcher {
  _HasRankPairs(matcher)
      : super(
          'HandRange with rank pairs that are',
          'rankPairs',
          matcher,
        );

  @override
  featureValueOf(actual) => (actual as HandRange).rankPairs;
}

Matcher rankPairsEqual(Iterable<RankPair> expected) {
  return _HasRankPairs(equals(expected));
}

class _HasCardPairs extends CustomMatcher {
  _HasCardPairs(matcher)
      : super(
          'HandRange with card pairs that are',
          'cardPairs',
          matcher,
        );

  @override
  featureValueOf(actual) => (actual as HandRange).cardPairs;
}

Matcher cardPairsEqual(Iterable<CardPair> expected) {
  return _HasCardPairs(equals(expected));
}
