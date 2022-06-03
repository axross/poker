// ignore_for_file: avoid_relative_lib_imports

import 'package:test/test.dart';
import '../../lib/src/models/card.dart';
import '../../lib/src/models/immutable_card_set.dart';
import '../../lib/src/models/hand_range.dart';
import '../../lib/src/models/rank.dart';
import '../../lib/src/models/suit.dart';

void main() {
  group('HandRange.parse()', () {
    test(
        'HandRange.parse("AQs-ATsAKo-AJo44+") returns HandRange<AQs-ATsAKo-AJo44+>',
        () {
      final handRange = HandRange.parse('AQs-ATsAKo-AJo44+');

      expect(
        handRange,
        containsAll({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
        }),
      );
    });

    test('HandRange.parse("88-66") returns HandRange<88-66>', () {
      expect(
        HandRange.parse('88-66'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.club),
          ),
        })),
      );
    });

    test('HandRange.parse("JJ+") returns HandRange<JJ+>', () {
      expect(
        HandRange.parse('JJ+'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ace, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
        })),
      );
    });

    test('HandRange.parse("AQs-A9s") returns HandRange<AQs-A9s>', () {
      expect(
        HandRange.parse('AQs-A9s'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
        })),
      );
    });

    test('HandRange.parse("98o-96o") returns HandRange<98o-96o>', () {
      expect(
        HandRange.parse('98o-96o'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
        })),
      );
    });

    test('HandRange.parse("K8s+") returns HandRange<K8s+>', () {
      expect(
        HandRange.parse('K8s+'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
        })),
      );
    });

    test('HandRange.parse("ATo+") returns HandRange<ATo+>', () {
      expect(
        HandRange.parse('ATo+'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
        })),
      );
    });

    test('HandRange.parse("44") returns HandRange<44>', () {
      expect(
        HandRange.parse('44'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.four, suit: Suit.spade),
            Card(rank: Rank.four, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.spade),
            Card(rank: Rank.four, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.spade),
            Card(rank: Rank.four, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.heart),
            Card(rank: Rank.four, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.heart),
            Card(rank: Rank.four, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.diamond),
            Card(rank: Rank.four, suit: Suit.club),
          ),
        })),
      );
    });

    test('HandRange.parse("JTs") returns HandRange<JTs>', () {
      expect(
        HandRange.parse('JTs'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
        })),
      );
    });

    test('HandRange.parse("72o") returns HandRange<72o>', () {
      expect(
        HandRange.parse('72o'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.deuce, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.deuce, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.deuce, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.deuce, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.deuce, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.deuce, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.deuce, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.deuce, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.deuce, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.club),
            Card(rank: Rank.deuce, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.club),
            Card(rank: Rank.deuce, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.club),
            Card(rank: Rank.deuce, suit: Suit.diamond),
          ),
        })),
      );
    });

    test('HandRange.parse("AsKs") returns HandRange<AsKs>', () {
      expect(
        HandRange.parse('AsKs'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
        })),
      );
    });

    test('HandRange.parse("7d6h") returns HandRange<7d6h>', () {
      expect(
        HandRange.parse('7d6h'),
        equals(HandRange({
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
        })),
      );
    });

    test(
        'HandRange.parse("88-66JJ+44AQs-A9s98o-96oK8s+ATo+JTs72oAsKs7d6h") returns HandRange<JJ+88-6644AQs-A9s98o-96oK8s+ATo+JTs72oAsKs7d6h>',
        () {
      final handRange =
          HandRange.parse('88-66JJ+44AQs-A9s98o-96oK8s+ATo+JTs72oAsKs7d6h');

      expect(handRange, hasLength(186));
      expect(
        handRange,
        containsAll({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ace, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.spade),
            Card(rank: Rank.four, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.spade),
            Card(rank: Rank.four, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.heart),
            Card(rank: Rank.four, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.heart),
            Card(rank: Rank.four, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.diamond),
            Card(rank: Rank.four, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.spade),
            Card(rank: Rank.four, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.deuce, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.deuce, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.deuce, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.deuce, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.deuce, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.deuce, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.deuce, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.club),
            Card(rank: Rank.deuce, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.club),
            Card(rank: Rank.deuce, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.club),
            Card(rank: Rank.deuce, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.deuce, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.deuce, suit: Suit.spade),
          ),
        }),
      );
    });

    test('HandRange.parse("") returns an empty hand range', () {
      expect(
        HandRange.parse(''),
        equals(HandRange({})),
      );
    });

    test('throws an error because "qwe" doesn\'t have any valid expression',
        () {
      expect(() {
        HandRange.parse('qwe');
      }, throwsA(isA<HandRangeParseFailureException>()));
    });

    test('throws an error because "AKTo+" contains an invalid expression', () {
      expect(() {
        HandRange.parse('AKTo+');
      }, throwsA(isA<HandRangeParseFailureException>()));
    });

    test('throws an error because "JJ++" contains an invalid expression', () {
      expect(() {
        HandRange.parse('JJ++');
      }, throwsA(isA<HandRangeParseFailureException>()));
    });
  });

  group('HandRange()', () {
    test('it creates a HandRange from the given sequence of ImmutableCardSet',
        () {
      final cardSets = {
        CardPair(
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
        ),
        CardPair(
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
        ),
        CardPair(
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
        ),
        CardPair(
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
        ),
        CardPair(
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        ),
      };
      final nonDuplicatedCardSets = {
        CardPair(
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
        ),
        CardPair(
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
        ),
        CardPair(
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
        ),
        CardPair(
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        ),
      };

      expect([...HandRange(cardSets)], equals(nonDuplicatedCardSets));
    });
  });

  group('HandRange#toString()', () {
    test('HandRange<88-66>.toString() returns "88-66"', () {
      expect(
        HandRange({
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.club),
          ),
        }).toString(),
        equals('88-66'),
      );
    });

    test('HandRange<JJ+>.toString() returns "JJ+"', () {
      expect(
        HandRange({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ace, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
        }).toString(),
        equals('JJ+'),
      );
    });

    test('HandRange<44>.toString() returns "44"', () {
      expect(
          HandRange({
            CardPair(
              Card(rank: Rank.four, suit: Suit.spade),
              Card(rank: Rank.four, suit: Suit.heart),
            ),
            CardPair(
              Card(rank: Rank.four, suit: Suit.spade),
              Card(rank: Rank.four, suit: Suit.diamond),
            ),
            CardPair(
              Card(rank: Rank.four, suit: Suit.spade),
              Card(rank: Rank.four, suit: Suit.club),
            ),
            CardPair(
              Card(rank: Rank.four, suit: Suit.heart),
              Card(rank: Rank.four, suit: Suit.diamond),
            ),
            CardPair(
              Card(rank: Rank.four, suit: Suit.heart),
              Card(rank: Rank.four, suit: Suit.club),
            ),
            CardPair(
              Card(rank: Rank.four, suit: Suit.diamond),
              Card(rank: Rank.four, suit: Suit.club),
            ),
          }).toString(),
          equals('44'));
    });

    test('HandRange<AQs-A9s>.toString() returns "AQs-A9s"', () {
      expect(
        HandRange({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
        }).toString(),
        equals('AQs-A9s'),
      );
    });

    test('HandRange<J9o-J6o>.toString() returns "J9o-J6o"', () {
      expect(
        HandRange({
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
        }).toString(),
        equals('J9o-J6o'),
      );
    });

    test('HandRange<98o-96o>.toString() returns "96o+"', () {
      expect(
        HandRange({
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
        }).toString(),
        equals('96o+'),
      );
    });

    test('HandRange<K8s+>.toString() returns "K8s+"', () {
      expect(
        HandRange({
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
        }).toString(),
        equals('K8s+'),
      );
    });

    test('HandRange<ATo+>.toString() returns "ATo+"', () {
      expect(
        HandRange({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
        }).toString(),
        equals('ATo+'),
      );
    });

    test('HandRange<JTs>.toString() returns "JTs"', () {
      expect(
        HandRange({
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
        }).toString(),
        equals('JTs'),
      );
    });

    test('HandRange<72o>.toString() returns "72o"', () {
      expect(
          HandRange({
            CardPair(
              Card(rank: Rank.seven, suit: Suit.spade),
              Card(rank: Rank.deuce, suit: Suit.heart),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.spade),
              Card(rank: Rank.deuce, suit: Suit.diamond),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.spade),
              Card(rank: Rank.deuce, suit: Suit.club),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.heart),
              Card(rank: Rank.deuce, suit: Suit.spade),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.heart),
              Card(rank: Rank.deuce, suit: Suit.diamond),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.heart),
              Card(rank: Rank.deuce, suit: Suit.club),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.diamond),
              Card(rank: Rank.deuce, suit: Suit.spade),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.diamond),
              Card(rank: Rank.deuce, suit: Suit.heart),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.diamond),
              Card(rank: Rank.deuce, suit: Suit.club),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.club),
              Card(rank: Rank.deuce, suit: Suit.spade),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.club),
              Card(rank: Rank.deuce, suit: Suit.heart),
            ),
            CardPair(
              Card(rank: Rank.seven, suit: Suit.club),
              Card(rank: Rank.deuce, suit: Suit.diamond),
            ),
          }).toString(),
          equals('72o'));
    });

    test('HandRange<AsKs>.toString() returns "AsKs"', () {
      expect(
          HandRange({
            CardPair(
              Card(rank: Rank.ace, suit: Suit.spade),
              Card(rank: Rank.king, suit: Suit.spade),
            )
          }).toString(),
          equals('AsKs'));
    });

    test('HandRange<7d6h>.toString() returns "7d6h"', () {
      expect(
          HandRange({
            CardPair(
              Card(rank: Rank.seven, suit: Suit.diamond),
              Card(rank: Rank.six, suit: Suit.heart),
            )
          }).toString(),
          equals('7d6h'));
    });

    test(
        'HandRange<88-66JJ+44AQs-A9s98o-96oK8s+ATo+JTs72o7d6hAsKs>.toString() returns "JJ+88-6644AQs-A9sATo+K8s+JTs96o+72oAsKs7d6h"',
        () {
      expect(
        HandRange({
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ace, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ace, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.queen, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.six, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.spade),
            Card(rank: Rank.four, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.spade),
            Card(rank: Rank.four, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.heart),
            Card(rank: Rank.four, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.heart),
            Card(rank: Rank.four, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.diamond),
            Card(rank: Rank.four, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.four, suit: Suit.spade),
            Card(rank: Rank.four, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.king, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.king, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.queen, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.queen, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.jack, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.heart),
            Card(rank: Rank.ten, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.spade),
            Card(rank: Rank.ten, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.club),
            Card(rank: Rank.ten, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.jack, suit: Suit.diamond),
            Card(rank: Rank.ten, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.ace, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.nine, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.nine, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.nine, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.nine, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.king, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.eight, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.seven, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.eight, suit: Suit.spade),
            Card(rank: Rank.eight, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.seven, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.spade),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.club),
            Card(rank: Rank.six, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.nine, suit: Suit.heart),
            Card(rank: Rank.six, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.seven, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.six, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.deuce, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.deuce, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.deuce, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.deuce, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.deuce, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.deuce, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.diamond),
            Card(rank: Rank.deuce, suit: Suit.club),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.club),
            Card(rank: Rank.deuce, suit: Suit.spade),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.club),
            Card(rank: Rank.deuce, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.club),
            Card(rank: Rank.deuce, suit: Suit.diamond),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.spade),
            Card(rank: Rank.deuce, suit: Suit.heart),
          ),
          CardPair(
            Card(rank: Rank.seven, suit: Suit.heart),
            Card(rank: Rank.deuce, suit: Suit.spade),
          ),
        }).toString(),
        equals('JJ+88-6644AQs-A9sATo+K8s+JTs96o+72oAsKs7d6h'),
      );
    });

    test('HandRange<>.toString() returns ""', () {
      expect(HandRange({}).toString(), equals(''));
    });
  });
}
