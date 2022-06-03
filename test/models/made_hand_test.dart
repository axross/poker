// ignore_for_file: avoid_relative_lib_imports

import 'package:test/test.dart';
import '../../lib/src/models/card.dart';
import '../../lib/src/models/immutable_card_set.dart';
import '../../lib/src/models/made_hand.dart';
import '../../lib/src/models/rank.dart';
import '../../lib/src/models/suit.dart';

void main() {
  group('MadeHand.from()', () {
    test(
        'MadeHand.from(ImmutableCardSet<4c8hKhQc4s6hJd>) returns MadeHand<1881>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5581)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d5sJc6s3s3dQh>) returns MadeHand<1612>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5850)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h9c5h5d4d7s4s>) returns MadeHand<4285>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3177)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h7d7cTd8dAd2c>) returns MadeHand<2568>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4894)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d2h7c3d5h7sKh>) returns MadeHand<4289>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3173)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js8s5s4sAs7dQs>) returns MadeHand<6958>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(504)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9hTc3sAd2s6cAh>) returns MadeHand<3998>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3464)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h4sKh7h8d3hAd>) returns MadeHand<1147>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6315)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td9s5cTsJc6dAh>) returns MadeHand<3237>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4225)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s2d8c6d6h4dTh>) returns MadeHand<5285>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2177)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsJsJh5s9d7d9h>) returns MadeHand<4620>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2842)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd4d5d5s9d7h4c>) returns MadeHand<4199>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3263)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KcKs2h6hAc9c7d>) returns MadeHand<3888>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3574)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2s8c3sKdQs8d7d>) returns MadeHand<2758>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4704)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c9s6c2hAdQd3c>) returns MadeHand<1042>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6420)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d7s5cAcKs7h9d>) returns MadeHand<2593>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4869)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8c8s3s9c8h3c9h>) returns MadeHand<7218>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(244)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2hThJh8sTs7dJd>) returns MadeHand<4627>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2835)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsKcAhJsThAc4d>) returns MadeHand<5851>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1611)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4sQh3h7s9s7hQd>) returns MadeHand<4693>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2769)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4h5d6dAh3d5sTh>) returns MadeHand<2126>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5336)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dTsQd8c6s3c7s>) returns MadeHand<350>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(7112)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4d3s2c7d7s2d2s>) returns MadeHand<7144>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(318)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cAsQsKd2s7hTh>) returns MadeHand<1267>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6195)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s6hKc2hQsTsJc>) returns MadeHand<782>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6680)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ah7hJs5h4cTs6d>) returns MadeHand<979>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6483)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc4h6hQs3h7cTh>) returns MadeHand<735>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6727)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<ThKs9d4s2s8d3s>) returns MadeHand<577>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6885)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd3hTh4c5h8h2s>) returns MadeHand<550>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6912)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3s6s8h9cJc2dQs>) returns MadeHand<426>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(7036)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4d2c3cAd3h4s8h>) returns MadeHand<4169>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3293)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d2sTs5c8s9cAc>) returns MadeHand<2789>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4673)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c6d4cKs7c6sQs>) returns MadeHand<2319>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5143)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c3hKc5cQdQcTd>) returns MadeHand<3628>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3834)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d9h6dTc7s9c5s>) returns MadeHand<2866>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4596)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c4cTcKs3d2s6c>) returns MadeHand<543>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6919)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6cJhTsQdTc2sJd>) returns MadeHand<4629>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2833)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd4cKh2h2s3cAh>) returns MadeHand<1496>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5966)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d2dKd3h8sAs9c>) returns MadeHand<1167>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6295)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s3hQc2c5hKhTs>) returns MadeHand<726>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6736)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s6hQh4d2s7hQc>) returns MadeHand<4658>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2804)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d6d3h3s4sKh9h>) returns MadeHand<5112>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2350)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsQdKc4d5d3cTs>) returns MadeHand<3848>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3614)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh6s5s5d4sQh2h>) returns MadeHand<2052>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5410)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th5d5c9c2sJsQs>) returns MadeHand<2056>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5406)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th9h6cKs5hKh4s>) returns MadeHand<3778>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3684)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dJs6h5d2s2dTd>) returns MadeHand<1358>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6104)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<As9d8c6dQd6sJh>) returns MadeHand<2366>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5096)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd4d2c6sAd4s5c>) returns MadeHand<1913>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5549)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d7c6sKd6cKsKh>) returns MadeHand<7276>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(186)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dKdJc4cTcKsAs>) returns MadeHand<3906>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3556)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd2d5cJd7c6cAc>) returns MadeHand<1091>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6371)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JhAd3d3cTs4d5h>) returns MadeHand<1697>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5765)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dKd7cKsTc6sQd>) returns MadeHand<3851>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3611)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h3s7d8h7c9h3d>) returns MadeHand<4263>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3199)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc2s2c4c8d9h6d>) returns MadeHand<1332>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6130)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5hJd4s2h3d7d9h>) returns MadeHand<171>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(7291)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c5sTsTcQcAcJd>) returns MadeHand<3246>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4216)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd7dAcQd7c2cJs>) returns MadeHand<4598>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2864)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4cKc6h9cAc9sAd>) returns MadeHand<4950>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2512)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsAdJc7dQs2h7c>) returns MadeHand<2596>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4866)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2dJc8h9cJd7c9d>) returns MadeHand<4616>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2846)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2hAc8cJdTd5d6h>) returns MadeHand<984>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6478)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qh6s5c8d7d5s9c>) returns MadeHand<5857>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1605)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dKdAh2cQd7cQh>) returns MadeHand<3693>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3769)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h3h8dJc7h3dQs>) returns MadeHand<1614>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5848)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s8cKs5c2d9c3s>) returns MadeHand<2955>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4507)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5sTd5c6hQs8d3h>) returns MadeHand<2047>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5415)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h6hTsAdJc3d4d>) returns MadeHand<1697>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5765)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<ThAs2dKs3s8hAd>) returns MadeHand<4116>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3346)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h8hTs8c6c4h2s>) returns MadeHand<4352>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3110)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hTsJcQhQd2s9h>) returns MadeHand<3596>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3866)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JcAs6c8c9d5h2s>) returns MadeHand<963>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6499)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcTsQs9sJs4d3h>) returns MadeHand<1112>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6350)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5dKh9sQs2c7hAs>) returns MadeHand<1259>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6203)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js2cKs5sAhTsQh>) returns MadeHand<5862>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1600)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c4hKs6c8s6s5d>) returns MadeHand<2290>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5172)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d3sThAsJhJd8d>) returns MadeHand<3456>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4006)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TsJs9c8d9h4cJh>) returns MadeHand<4617>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2845)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2cAhAd8h6c4s4h>) returns MadeHand<4890>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2572)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qc8d7cQdKh4s3c>) returns MadeHand<3617>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3845)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd8sKhTh4hJsQs>) returns MadeHand<3421>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4041)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcTc6hQd6c8s7h>) returns MadeHand<4683>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2779)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd3dKdJd8h6sJc>) returns MadeHand<3419>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4043)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5cTs4s9s4d7sAc>) returns MadeHand<1909>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5553)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd5s2s4sAdTh9h>) returns MadeHand<1073>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6389)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c2h9dQc2s3d4h>) returns MadeHand<1378>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6084)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6dKh7hTd3s7d2s>) returns MadeHand<2522>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4940)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h2dKhTd9c5h4h>) returns MadeHand<2961>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4501)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s8d2d7cKh3h5d>) returns MadeHand<2071>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5391)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hTh9s7cQc4sTd>) returns MadeHand<3148>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4314)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JdKdJh8c5h8h3c>) returns MadeHand<4608>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2854)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s3s4c6hAhAdQc>) returns MadeHand<4894>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2568)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh7d6cAsAc3dKs>) returns MadeHand<4123>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3339)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3sQc8h3hTh9sAc>) returns MadeHand<1705>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5757)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d4h4s7h9s8d6s>) returns MadeHand<4274>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3188)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s4s7sKc3dQs9c>) returns MadeHand<713>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6749)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s6c9d8cQcAc4h>) returns MadeHand<1924>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5538)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6hJcJd9d3c9h2c>) returns MadeHand<4614>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2848)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c7dQd2cAsTdJc>) returns MadeHand<1110>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6352)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8s6d2c8c7c2sKd>) returns MadeHand<4311>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3151)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JdTcTsJh5dAs7c>) returns MadeHand<4631>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2831)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th4h3c9d9s4dAc>) returns MadeHand<4400>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3062)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4hAhTs9h8d9c2c>) returns MadeHand<3009>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4453)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3sAc3dQcTdKs4c>) returns MadeHand<1716>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5746)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c2sQcQd4hAs9s>) returns MadeHand<4642>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2820)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d8d3cAdTdJhAs>) returns MadeHand<4036>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3426)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d4sTc4d2hAh3h>) returns MadeHand<4169>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3293)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks9d6hJs4h8sQh>) returns MadeHand<776>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6686)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2cAdKh6d8hAh4s>) returns MadeHand<4101>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3361)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JhJd7s8s8c2s4s>) returns MadeHand<4604>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2858)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js9d5dAh7dQhKc>) returns MadeHand<1276>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6186)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcJh6sQs8hTs4c>) returns MadeHand<3595>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3867)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsAhJdKcKhJc7h>) returns MadeHand<7281>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(181)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d6c2cTdJc5h5d>) returns MadeHand<2020>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5442)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s9c5s6d2dTc8d>) returns MadeHand<116>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(7346)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7cKh4sAd6hTs8d>) returns MadeHand<1189>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6273)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TdTsJdTc6hKc4s>) returns MadeHand<5576>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1886)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s4h2d5sKs5h4d>) returns MadeHand<4201>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3261)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s8c3d8dKcQhAh>) returns MadeHand<2816>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4646)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s9dKhKd6hThQd>) returns MadeHand<3852>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3610)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h2c5h4s3sAd6c>) returns MadeHand<5855>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1607)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8c2h3cKc9h7c3h>) returns MadeHand<1637>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5825)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh5s6s2h7hTs9c>) returns MadeHand<574>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6888)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs9d9hAh4h4c3s>) returns MadeHand<4400>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3062)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c9hJs5s3c6sJd>) returns MadeHand<4614>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2848)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc8cJhTd7c9d2c>) returns MadeHand<5859>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1603)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d2d6s9hTs3sTd>) returns MadeHand<4526>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2936)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hTsAh5c8h4d6c>) returns MadeHand<882>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6580)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4d3sQh2s3c7c9s>) returns MadeHand<1600>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5862)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c4sTd6dTc2sJd>) returns MadeHand<3102>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4360)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d6h8cTs8s5s2h>) returns MadeHand<4352>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3110)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3dTdJsQhJhQs4h>) returns MadeHand<4739>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2723)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6dKh5d6cKc2c2s>) returns MadeHand<4789>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2673)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c4s6d6s7h3s8h>) returns MadeHand<2191>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5271)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2dTd5s8dKhAdKd>) returns MadeHand<7047>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(415)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JsAhJd4c7hTcKc>) returns MadeHand<3475>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3987)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cQh5hJs8sJc2d>) returns MadeHand<4607>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2855)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6dJd7d8s2hTc4d>) returns MadeHand<225>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(7237)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ad6c7sQs4d9d2s>) returns MadeHand<1042>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6420)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsQc3hJd3c9dQh>) returns MadeHand<7261>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(201)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qc9h6d4d3dKc5c>) returns MadeHand<709>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6753)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td8cJd7c9s9h8s>) returns MadeHand<5859>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1603)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s4cAcThJc7cAd>) returns MadeHand<4036>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3426)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7sAh8sKd3c6s2s>) returns MadeHand<1147>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6315)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3dAs3cAh4c9dQh>) returns MadeHand<4883>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2579)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h4h8s2d7cQcAs>) returns MadeHand<1026>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6436)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h9h5d6d6cQh4h>) returns MadeHand<2259>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5203)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h9h7s9dQc8d2s>) returns MadeHand<2921>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4541)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6sThAc5c6dJd4h>) returns MadeHand<2357>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5105)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc5d5c7dJs6s3d>) returns MadeHand<4570>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2892)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td4sJsTsAc7d5d>) returns MadeHand<3235>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4227)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QdKsQh7h2c6s4h>) returns MadeHand<3611>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3851)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ah2h9s9dQh2d7c>) returns MadeHand<4378>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3084)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7hQc3c9cJc5sAd>) returns MadeHand<1103>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6359)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5sTdAh8dQcQs2h>) returns MadeHand<3676>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3786)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd8c4s6dQc6s9c>) returns MadeHand<4682>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2780)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c5dQh2c9c8hKd>) returns MadeHand<718>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6744)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4hTsJc7h8c6c5c>) returns MadeHand<5856>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1606)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ts4c5c7cTcJc6c>) returns MadeHand<6073>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1389)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th6d9s5s7s2sQd>) returns MadeHand<365>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(7097)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c5dAc2c9hAdJd>) returns MadeHand<4904>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2558)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s5d3sTsKd3h7c>) returns MadeHand<4190>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3272)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c3h5c3s5s6d4c>) returns MadeHand<5854>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1608)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AhKc3c8h3s3hJh>) returns MadeHand<5126>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2336)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JhTdJd2sKhTh6d>) returns MadeHand<4630>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2832)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcTd4hJc8s2s4c>) returns MadeHand<1836>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5626)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc9c2dKs8s7cAd>) returns MadeHand<3889>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3573)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d5c9c8c2s2h3h>) returns MadeHand<4142>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3320)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AdAs5hQd6dAc7h>) returns MadeHand<5837>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1625)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4hJd8c7d7c4d8h>) returns MadeHand<4364>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3098)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dTs4cAsKs8c5s>) returns MadeHand<1934>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5528)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs4d5h7s2cAc9s>) returns MadeHand<1041>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6421)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TdAc6c8hTs3h6h>) returns MadeHand<4499>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2963)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h8cAcJsAh6s8h>) returns MadeHand<4937>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2525)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s2d3c8h7s5h9h>) returns MadeHand<2850>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4612)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th9d2c8s6c8hTc>) returns MadeHand<4517>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2945)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5cQdJh7h6s2cKd>) returns MadeHand<763>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6699)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d3c6c7sKcKs5h>) returns MadeHand<3746>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3716)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsJc7sJdKc7hQs>) returns MadeHand<4850>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2612)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc8h2sAc5c4s8s>) returns MadeHand<2786>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4676)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ac5h9hQs6s5s9s>) returns MadeHand<4411>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3051)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs9cQhJh8c6sQc>) returns MadeHand<5698>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1764)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h5hKs6hTd6s2d>) returns MadeHand<2302>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5160)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th4s4hAd3s9sJs>) returns MadeHand<1917>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5545)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TsJhQsKdQh3d2d>) returns MadeHand<3641>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3821)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd6h9hJdAsKd6d>) returns MadeHand<2376>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5086)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KdQc8c3h7s6c4h>) returns MadeHand<699>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6763)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6sJcTs9s6d8c9d>) returns MadeHand<4419>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3043)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cQc2h2d3dTcKs>) returns MadeHand<1440>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6022)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd6c8d5d9d7d5c>) returns MadeHand<6177>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1285)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5hQd7d8h9sTs9h>) returns MadeHand<2928>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4534)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QhTh6cQcQd6d4c>) returns MadeHand<7264>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(198)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s6c8c2dAsJdKc>) returns MadeHand<2375>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5087)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h4dAd2hQs6d6s>) returns MadeHand<2362>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5100)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KdQhJd4d3hAhQd>) returns MadeHand<3696>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3766)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ts5c8d7sAh9cTd>) returns MadeHand<3229>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4233)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dAcKc3d2d2hQd>) returns MadeHand<1496>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5966)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h7sJd3c5c7dAc>) returns MadeHand<2576>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4886)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8c3s5hJh7s4h3h>) returns MadeHand<1567>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5895)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qh8c3dQc9d5sAc>) returns MadeHand<3669>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3793)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ah8c9hJh7cQs2s>) returns MadeHand<1104>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6358)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c6dAs3hKdTd4c>) returns MadeHand<1183>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6279)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd3cTh8cQc4d5s>) returns MadeHand<739>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6723)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ts9d5d6sJd2s6h>) returns MadeHand<2240>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5222)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<As2h6dTdTh9dQc>) returns MadeHand<3245>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4217)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c8c4s4c3sTh2d>) returns MadeHand<1766>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5696)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dJc7d4s3hTcAc>) returns MadeHand<1917>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5545)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9cAd8c7dAc6cQd>) returns MadeHand<4064>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3398)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d9s2hJdTs3cQd>) returns MadeHand<453>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(7009)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2s5c2hKsKh7s4c>) returns MadeHand<4746>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2716)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c9sAs6sAc7d4h>) returns MadeHand<3966>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3496)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd4h3s9c6dTdJc>) returns MadeHand<453>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(7009)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ah2d5dQhQc4hAs>) returns MadeHand<4976>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2486)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4h3sJc7c6hTh2s>) returns MadeHand<209>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(7253)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h5h9c8h7s2h7d>) returns MadeHand<5857>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1605)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d4d3sTc8s8c8h>) returns MadeHand<7375>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(87)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h8c4dJc4c6c2c>) returns MadeHand<6004>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1458)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6dJs4cJh2d3d9s>) returns MadeHand<3300>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4162)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h7hAd7c4dKd8d>) returns MadeHand<2593>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4869)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc5h2c2h9sTc8s>) returns MadeHand<1360>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6102)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d5c8h9sQcKd9h>) returns MadeHand<2979>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4483)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d6hAd9dQs3d2s>) returns MadeHand<2364>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5098)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4cQcKc6s9h3dQs>) returns MadeHand<3622>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3840)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4cTdTh2c6dAh5d>) returns MadeHand<3211>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4251)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d2d2h2cTsJdKc>) returns MadeHand<5048>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2414)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h2c5c9dTcJs6c>) returns MadeHand<2020>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5442)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h5c6d2dKh8hJh>) returns MadeHand<2090>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5372)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d2s9h4dQh6d5s>) returns MadeHand<1379>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6083)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dAd5sTdKdQc2d>) returns MadeHand<7033>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(429)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cThAs7s9cTc6c>) returns MadeHand<5858>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1604)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hAh7c5dTcTs5c>) returns MadeHand<4488>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2974)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h7d3cKc6sAc8d>) returns MadeHand<1147>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6315)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c6sQdTh4hTd7d>) returns MadeHand<3135>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4327)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d7d6c9s2d4sAs>) returns MadeHand<837>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6625)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JsQh6s5s9c6d2d>) returns MadeHand<2275>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5187)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc8c2c6sQs4cTh>) returns MadeHand<740>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6722)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd2sTh2dJdTsKc>) returns MadeHand<4838>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2624)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc4d8dQs2h2c4h>) returns MadeHand<4156>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3306)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d5d9sQd7hTc2d>) returns MadeHand<2488>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4974)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c3s9sKd6sAs6c>) returns MadeHand<4422>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3040)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd4c8dKc5dJcQc>) returns MadeHand<3639>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3823)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h2c3c9d8c9cAs>) returns MadeHand<4378>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3084)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcKh5c9s9h7h7c>) returns MadeHand<4433>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3029)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hJcTdTcAhKd6s>) returns MadeHand<3255>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4207)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c6s9cJcAhQs3h>) returns MadeHand<1103>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6359)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd3hJc2s4hJd3d>) returns MadeHand<4552>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2910)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsAs3hJhJc2cTh>) returns MadeHand<3466>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3996)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JhKc9h6sTc4c9d>) returns MadeHand<2972>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4490)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6sAh9c9dQh2h6h>) returns MadeHand<4422>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3040)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8s8dQd2d8h4sQc>) returns MadeHand<7221>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(241)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KdTc2h7sTsKs2c>) returns MadeHand<4835>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2627)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KhKsQd9d9s2h8s>) returns MadeHand<4828>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2634)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3sTsJh5dQhQd9h>) returns MadeHand<3596>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3866)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh6d9s2hKs3d2c>) returns MadeHand<1431>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6031)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sAc3cTd4s9h6s>) returns MadeHand<3007>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4455)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd5dAd7c7dKcJs>) returns MadeHand<4807>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2655)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c4d3sKdAh9cKc>) returns MadeHand<3886>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3576)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qc3cKhQhJd9s5d>) returns MadeHand<3640>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3822)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hAsKh7sJh7hTh>) returns MadeHand<6520>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(942)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d4dKd2h2dQhTs>) returns MadeHand<1440>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6022)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TcAhQs2hAs4h6c>) returns MadeHand<4069>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3393)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c4s6d3dAhJcJh>) returns MadeHand<3447>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4015)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks7cTs2sJc9dTd>) returns MadeHand<3192>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4270)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QdKc3h4c5c5h2h>) returns MadeHand<2095>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5367)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d8h2c5d5sKd8s>) returns MadeHand<4344>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3118)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5hJh3s2s9sQdQh>) returns MadeHand<3585>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3877)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsJsQcAd5sKc8h>) returns MadeHand<4136>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3326)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6sJd3h3dJsKc9s>) returns MadeHand<4553>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2909)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h3s5s2s7dAs7s>) returns MadeHand<6652>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(810)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd6h4d6dTh8c9s>) returns MadeHand<2268>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5194)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c9sJc2dQc7h8h>) returns MadeHand<2495>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4967)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dQc5d6hKhTcQs>) returns MadeHand<3630>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3832)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s5dTsQh2s3hQd>) returns MadeHand<3538>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3924)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dJc3d4h8c2s2d>) returns MadeHand<4155>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3307)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4d9sAs6cKdTdQd>) returns MadeHand<1268>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6194)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsThQdJc6dTd5d>) returns MadeHand<3246>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4216)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td3cJc4s7dKh9h>) returns MadeHand<663>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6799)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5sTsTh3s9hTcQs>) returns MadeHand<5566>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1896)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d3sAc5c4cKcTh>) returns MadeHand<1193>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6269)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh7c6c2d5d4d5s>) returns MadeHand<2066>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5396)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5dKcJcTcQd7d4c>) returns MadeHand<782>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6680)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc4hJdAcJc3dJh>) returns MadeHand<5654>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1808)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c5c3c2h2sJd5d>) returns MadeHand<4177>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3285)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcQh7h6hKs3s5h>) returns MadeHand<1247>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6215)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KcAd3h2dAsTc4c>) returns MadeHand<4112>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3350)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c5dAc6c8c6sKs>) returns MadeHand<2372>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5090)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d2d4d6s9sQd8d>) returns MadeHand<6129>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1333)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qh5h4d8h6c3cJd>) returns MadeHand<401>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(7061)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcAs6dAhJd5c5d>) returns MadeHand<7287>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(175)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc8dTh7s9s2d6s>) returns MadeHand<5859>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1603)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dJs6d5dKh9sAd>) returns MadeHand<1224>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6238)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s9cJh8hQc2dKd>) returns MadeHand<2981>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4481)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AdJh6sKc5d6h8s>) returns MadeHand<2375>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5087)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c4c8hKs2h7s9s>) returns MadeHand<2517>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4945)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh4s8d3s9h6dAc>) returns MadeHand<963>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6499)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2cQdQc4c7h4s5h>) returns MadeHand<4658>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2804)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c3h6d8c7h2d2s>) returns MadeHand<4207>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3255)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc7s6cKhKc2d5s>) returns MadeHand<3795>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3667)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc7s8d6h8cTcAd>) returns MadeHand<2814>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4648)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d7h2hQh3dQcKd>) returns MadeHand<4641>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2821)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ah3c8s8hQc4sTc>) returns MadeHand<2805>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4657)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8sAd4c9s8h2c6c>) returns MadeHand<2781>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4681)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsQc6sThAs9s6h>) returns MadeHand<4686>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2776)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c4s9h9dAcQhTs>) returns MadeHand<3025>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4437)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d4hAs2s2h4d4s>) returns MadeHand<7164>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(298)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd9d4hTc9s8c7c>) returns MadeHand<5859>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1603)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd2dAs3s4sKd5c>) returns MadeHand<5853>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1609)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsJd6d9c8c7cTd>) returns MadeHand<5859>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1603)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsTs6d6c8h2c9s>) returns MadeHand<2268>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5194)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hAh8s7s2c2sAc>) returns MadeHand<4934>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2528)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s6hAs8dTcKd2h>) returns MadeHand<2374>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5088)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c4sAs7h9d9h3s>) returns MadeHand<4433>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3029)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc3s3h7h7cTs5s>) returns MadeHand<4265>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3197)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc4c9c7c2dJs4h>) returns MadeHand<1871>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5591)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh9d2s8d2h7d2d>) returns MadeHand<5046>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2416)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5dJhKc6c8c3h3c>) returns MadeHand<1650>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5812)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6sKc6c7s4d5dKd>) returns MadeHand<4790>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2672)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4h2sJsKs3s3cQc>) returns MadeHand<1661>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5801)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8c4d2sKdQd3h6d>) returns MadeHand<693>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6769)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d6sKhTs7c3d9c>) returns MadeHand<2524>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4938)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KdAc7s2s4d5s7h>) returns MadeHand<2590>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4872)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsAc5d7c9s6d8s>) returns MadeHand<5857>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1605)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ts4d2c8s6h3hKs>) returns MadeHand<553>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6909)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d2c4cTdTs7d4s>) returns MadeHand<4471>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2991)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<ThJs3c4s9d2c8c>) returns MadeHand<243>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(7219)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h9s7hKsQsKc5h>) returns MadeHand<4828>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2634)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QdAh3c5s3s8sJs>) returns MadeHand<1706>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5756)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<As2d4h9cJh6c5h>) returns MadeHand<953>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6509)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5sKcKs7d8d5hJc>) returns MadeHand<4783>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2679)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s6c7d2sQc6h9h>) returns MadeHand<2260>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5202)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks8h6h2d5dAd5h>) returns MadeHand<2152>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5310)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d6s7s5h8hQhJc>) returns MadeHand<2054>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5408)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hQdJd9h6h5c6d>) returns MadeHand<2275>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5187)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9dAs4d4s5hTc9s>) returns MadeHand<4400>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3062)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ts7s8c2dAh4c9c>) returns MadeHand<908>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6554)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7hTc6hJdQh3d4h>) returns MadeHand<442>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(7020)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d4sTd2hQsKs8d>) returns MadeHand<748>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6714)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s2s8sKs5c6h2d>) returns MadeHand<4212>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3250)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h8d8cKs9d6h4c>) returns MadeHand<4443>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3019)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js3s6h9hQd4sQs>) returns MadeHand<3586>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3876)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2hQh4dTd2c3d7c>) returns MadeHand<1386>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6076)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qh7sAc4s6dQd9s>) returns MadeHand<3668>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3794)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs6s6c7sAh6hQd>) returns MadeHand<7197>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(265)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sJhQd6c7s3hAd>) returns MadeHand<1103>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6359)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AhQs8dKh3c4cJd>) returns MadeHand<1275>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6187)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d6d9d2hTh3s7d>) returns MadeHand<1331>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6131)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dQcAs5cJd6sJh>) returns MadeHand<3464>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3998)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4sKd2cJc4c2dQd>) returns MadeHand<4157>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3305)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6sTd7h7c8hKd4d>) returns MadeHand<2523>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4939)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h6sJhAdQd2sKd>) returns MadeHand<1273>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6189)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d3c2h6hThKs5s>) returns MadeHand<554>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6908)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ah4sJh5h6d9dTc>) returns MadeHand<990>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6472)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c7h5d6s2sAh8c>) returns MadeHand<2336>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5126)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JcKh7h4d4s4c4h>) returns MadeHand<7330>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(132)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TcKc2c8d5h9hTh>) returns MadeHand<3184>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4278)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cJh7h5sKcAdQd>) returns MadeHand<1275>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6187)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8s4h9sQc3dAc6c>) returns MadeHand<1047>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6415)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js3c9c4c2h9sAs>) returns MadeHand<3012>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4450)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dQsAd9h7s4c3d>) returns MadeHand<2584>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4878)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KdTcQhAh9d6h5c>) returns MadeHand<1268>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6194)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KhAs2hQs2sJs3h>) returns MadeHand<1496>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5966)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d3d3sQs8hJh2s>) returns MadeHand<1615>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5847)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc4h2c7h5h2s3h>) returns MadeHand<1341>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6121)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s3h3sJh7hTh9c>) returns MadeHand<1580>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5882)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h9dAhTh9cAcTc>) returns MadeHand<4958>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2504)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c8h7d6sJcQh2d>) returns MadeHand<406>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(7056)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d8c5h2sTs9dKh>) returns MadeHand<2084>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5378)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cKd2s2cQcJc3s>) returns MadeHand<1441>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6021)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9dAs5s4dJd3c7s>) returns MadeHand<957>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6505)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c8hAhKd4s8s3d>) returns MadeHand<2809>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4653)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd6sAs6d5s7h8h>) returns MadeHand<2363>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5099)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h4cTcQd5cKs8s>) returns MadeHand<741>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6721)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks9d2dKcAh6d2c>) returns MadeHand<4752>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2710)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sTc3hKcAd2h8c>) returns MadeHand<1196>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6266)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hQcTc2h5c2d3s>) returns MadeHand<1387>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6075)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d4h9dKc2sAs5s>) returns MadeHand<1161>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6301)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ts2hKd5d2cKcTd>) returns MadeHand<4833>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2629)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s6s9hKhAdKc3s>) returns MadeHand<3887>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3575)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js8sAd3c3dAcTh>) returns MadeHand<4882>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2580)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d8c4h5d6h9hAh>) returns MadeHand<3001>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4461)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc2s5dJs4cJcAs>) returns MadeHand<3453>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4009)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d6cKsTd9dAh5h>) returns MadeHand<2374>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5088)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hQc5d8dQh6cKd>) returns MadeHand<3616>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3846)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JsTcTh4cAd3c8s>) returns MadeHand<3236>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4226)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6hAh2sTc2dJh6c>) returns MadeHand<4213>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3249)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d3c7hQhAs5hJs>) returns MadeHand<2586>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4876)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s8s6c4c8hJh9h>) returns MadeHand<4331>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3131)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh6c7h8hTcTs4s>) returns MadeHand<3177>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4285)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8s9h3h3c7dKs9d>) returns MadeHand<4388>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3074)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8sAc5sQc6dAh6h>) returns MadeHand<4916>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2546)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsAd7d4cTd6h9d>) returns MadeHand<1075>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6387)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js7hAc9d5h2hKd>) returns MadeHand<1223>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6239)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c3d5cJd7s8hQd>) returns MadeHand<1614>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5848)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2dAcJcKh3cQcAh>) returns MadeHand<4136>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3326)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh4s6dTd8c3sQh>) returns MadeHand<447>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(7015)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d6hAd3hKs4c8d>) returns MadeHand<1141>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6321)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc8sAc8hTh4sJs>) returns MadeHand<4609>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2853)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd8h4h9s6c8cAc>) returns MadeHand<2804>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4658)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcAh5hAdAc2s7c>) returns MadeHand<5837>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1625)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h9h4dTd5c6c7d>) returns MadeHand<2431>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5031)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h6c2hJdTs8d5h>) returns MadeHand<245>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(7217)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h3h9d9sJh3d5h>) returns MadeHand<4386>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3076)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcJh2s7d7s6c2h>) returns MadeHand<4257>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3205)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c2sKsTd6s9cTs>) returns MadeHand<3182>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4280)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s2c8s2sTs5h3s>) returns MadeHand<5934>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1528)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s5s3s7h4dTsTd>) returns MadeHand<3085>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4377)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcQd2s2cAs9hTs>) returns MadeHand<4642>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2820)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9hKd4sKc8dTc7s>) returns MadeHand<3780>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3682)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c6dKd3d7h9d5d>) returns MadeHand<6361>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1101)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TdKh3h4c8h3sKs>) returns MadeHand<4760>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2702)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s9dTc2sAsKd7h>) returns MadeHand<1195>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6267)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KcAd7hTh4hQs8h>) returns MadeHand<1267>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6195)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs7sJhQdAhTd9c>) returns MadeHand<3686>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3776)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th3s9h2cTd5c6c>) returns MadeHand<3081>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4381)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6hQd8hKc8sAdQs>) returns MadeHand<4708>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2754)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js9h8c7cKhQh9d>) returns MadeHand<2981>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4481)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h2sTdAd6dKs2c>) returns MadeHand<4213>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3249)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AhQh5cJc7d7s6s>) returns MadeHand<2586>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4876)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KdTdTs2cAd4c6h>) returns MadeHand<3251>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4211)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh3h7s8cJh8dAh>) returns MadeHand<2815>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4647)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8s3cQs9d8d6hQh>) returns MadeHand<4704>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2758)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7cAd3c9h6dQc8h>) returns MadeHand<1048>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6414)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s6c4c7s5h9s3d>) returns MadeHand<5855>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1607)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hJdAh3s8hTh4d>) returns MadeHand<1697>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5765)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3sJdTs4h5h2h8c>) returns MadeHand<216>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(7246)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td5d3hJsQh4sTc>) returns MadeHand<3152>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4310)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js8d2cAd3sJd7s>) returns MadeHand<3442>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4020)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hJc3h3cTd2sAc>) returns MadeHand<1697>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5765)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QdAhJcKdTc2hJs>) returns MadeHand<5862>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1600)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs5h2dQd8hKdKh>) returns MadeHand<4858>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2604)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QhQdJc9c2d8hJh>) returns MadeHand<4738>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2724)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c4dJc2d2h7d9d>) returns MadeHand<4375>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3087)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ac8cTcThJs8h7s>) returns MadeHand<4521>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2941)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d5c8d4hKsTdJd>) returns MadeHand<664>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6798)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2hKs4cTd6cJsKd>) returns MadeHand<3813>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3649)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6hQc8s9c9d4sJh>) returns MadeHand<2935>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4527)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9cKcJdAcTd7s6s>) returns MadeHand<1232>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6230)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KhTcTs2d6hTd2c>) returns MadeHand<7236>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(226)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qh2c3d5c8sQd9s>) returns MadeHand<3530>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3932)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6cKd2d4hAc8hJh>) returns MadeHand<1216>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6246)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c2s6sJdAs6h2d>) returns MadeHand<4213>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3249)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ad6c5cQc4c5hTh>) returns MadeHand<2145>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5317)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dJc2d3s9hJd8s>) returns MadeHand<4605>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2857)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JdQc9c3s7d2h5h>) returns MadeHand<420>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(7042)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dJhKdAsJs7s5d>) returns MadeHand<4598>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2864)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c5s4cKc7sTs8d>) returns MadeHand<2523>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4939)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h6d4s4h2d2sQd>) returns MadeHand<4156>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3306)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh8dKsTc3dQs7d>) returns MadeHand<3851>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3611)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sJdKh4c7c5cJc>) returns MadeHand<3403>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4059)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd6sJs8dKd3c3h>) returns MadeHand<1661>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5801)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ad2d2cJcAc7d3h>) returns MadeHand<4871>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2591)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s8dQh5h2d3d4h>) returns MadeHand<2033>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5429)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsQc7s5c6h4sKd>) returns MadeHand<3831>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3631)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h7s9sTd3cTc5c>) returns MadeHand<4462>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3000)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5hKhJdAhKs6h2s>) returns MadeHand<3902>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3560)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4cTd2sJhQc3s7c>) returns MadeHand<440>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(7022)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s8sThJhJdJs2d>) returns MadeHand<5623>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1839)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9hQdJd6dTh5c2c>) returns MadeHand<453>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(7009)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dThJs9s9c6d7s>) returns MadeHand<2899>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4563)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s8h8d5sKdQsKc>) returns MadeHand<4817>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2645)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2sTsKdTh7c4cKh>) returns MadeHand<4835>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2627)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsKdQc5h9c9hTd>) returns MadeHand<3036>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4426)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ad8h5d4cJhThKs>) returns MadeHand<1231>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6231)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cTdJd4s5d4d7h>) returns MadeHand<1799>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5663)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s8sQc8dTd4h7d>) returns MadeHand<2707>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4755)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2dAd4c2hQcKc7h>) returns MadeHand<1496>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5966)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7sKs3dKc5d7d6h>) returns MadeHand<4801>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2661)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s5d6h9dJc5s6d>) returns MadeHand<4243>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3219)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7hTc9d2s8h5sKc>) returns MadeHand<580>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6882)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd2dQhKs6h4hJs>) returns MadeHand<3857>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3605)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8s2c7c5c4dKc4s>) returns MadeHand<1851>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5611)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks7h9sAc5hJdAd>) returns MadeHand<4125>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3337)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9cAs7sAcTc4c8d>) returns MadeHand<4000>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3462)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s4cThTs3dJdQh>) returns MadeHand<3154>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4308)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d5h2hThTs3s3c>) returns MadeHand<4459>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3003)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5sTsJhKh9s8hKs>) returns MadeHand<3816>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3646)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c9cKh2s3c5sKc>) returns MadeHand<3741>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3721)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sKcKh7sQcKd8h>) returns MadeHand<5773>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1689)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hKc7cAc6s5c9d>) returns MadeHand<1162>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6300)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3s8c5s4d7h9d7d>) returns MadeHand<2410>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5052)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5hAd5dTd4d9c6h>) returns MadeHand<2129>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5333)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsAsKh3dJh6c7c>) returns MadeHand<3903>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3559)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh8sQd2h6s6dJs>) returns MadeHand<2321>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5141)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd2cKh3sKdQh2s>) returns MadeHand<4751>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2711)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsKc9d4c5dKh9s>) returns MadeHand<4829>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2633)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KdTh5hAd9dQs4c>) returns MadeHand<1268>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6194)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks5hJdJh5d9d6d>) returns MadeHand<4575>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2887)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c8hAhKs9sAs3h>) returns MadeHand<4109>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3353)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dQs8cKsQcAcKh>) returns MadeHand<4862>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2600)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9hTcJc5hAc9c4d>) returns MadeHand<3017>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4445)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<ThAh6c4h4c4s3c>) returns MadeHand<5189>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2273)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h8c9d3d4cAdAh>) returns MadeHand<3971>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3491)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s8d5hKh2hTh4c>) returns MadeHand<558>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6904)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ac8c9cTd4dAs5d>) returns MadeHand<4000>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3462)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KhJd8h5sAcAd4h>) returns MadeHand<4124>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3338)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c6d5d7d2s4s7c>) returns MadeHand<4250>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3212)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh6h7c3h6c4h5h>) returns MadeHand<6322>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1140)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d7c8s8hAs5hTh>) returns MadeHand<5453>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2009)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h8s5s2cTcQh4c>) returns MadeHand<341>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(7121)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcJc6d7hTh2c4s>) returns MadeHand<442>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(7020)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc5hTh2cQh4c8c>) returns MadeHand<3139>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4323)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3s7sQc9cTd8sQh>) returns MadeHand<3560>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3902)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ts4dJd7cKc3c9h>) returns MadeHand<663>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6799)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6hKhJd8sKd6dKs>) returns MadeHand<7276>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(186)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c3dTc4cQhTd6s>) returns MadeHand<3135>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4327)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d8d4hJd6hTd9d>) returns MadeHand<6107>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1355)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c8hAdQh9c6h8s>) returns MadeHand<2804>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4658)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d3cTcJs7hJdJh>) returns MadeHand<5622>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1840)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5cQsAsQdKh3d6s>) returns MadeHand<3691>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3771)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6sJsJh3cJcAhKc>) returns MadeHand<5654>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1808)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc8h5s2sAcJhJs>) returns MadeHand<3456>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4006)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8s5d2d4d6d5hJd>) returns MadeHand<5987>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1475)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8c5d9sQd2h2s5c>) returns MadeHand<4178>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3284)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dThQh9h4cKd2s>) returns MadeHand<1880>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5582)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h5s2hAh9hTc5d>) returns MadeHand<5255>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2207)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TcTsJc9c7c4d9s>) returns MadeHand<4529>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2933)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh9sJd6c5d7c9h>) returns MadeHand<4615>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2847)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5hTcKd2sThAsAd>) returns MadeHand<4961>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2501)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d9dQsQcJh7d4d>) returns MadeHand<3587>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3875)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9cQs3hQdQcKd9d>) returns MadeHand<7267>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(195)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh5dJcTh7hQs2c>) returns MadeHand<3374>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4088)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h5hAc5d7sQs2d>) returns MadeHand<2144>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5318)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2hTc6d3cTh2c4c>) returns MadeHand<4448>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3014)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d8s8hQdKdJh3c>) returns MadeHand<2761>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4701)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c8s6dJdJh4dQh>) returns MadeHand<3360>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4102)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3s6h3dTsKhQh5s>) returns MadeHand<1660>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5802)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs3d5dJcTsQc9c>) returns MadeHand<3596>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3866)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9hJh3h9d6c4c8h>) returns MadeHand<2892>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4570)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd7c9d3dQh3h2d>) returns MadeHand<1615>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5847)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qh5c6d8d9hJs7c>) returns MadeHand<5857>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1605)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5cJs2d6sJcTd4d>) returns MadeHand<3322>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4140)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5dTc7sQc9s5h6s>) returns MadeHand<2048>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5414)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ad6s2d7cJs7d4c>) returns MadeHand<2574>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4888)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s6sQc4h2h8c8s>) returns MadeHand<2695>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4767)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js9c5c9sKsTh8d>) returns MadeHand<2972>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4490)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dTsQdKdKc5dAd>) returns MadeHand<7109>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(353)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6hJdKcAd5h7d4h>) returns MadeHand<1211>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6251)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc5h9sQh5d9hJs>) returns MadeHand<4618>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2844)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8sAdAc3s9dQdKs>) returns MadeHand<4134>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3328)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th4h2h4d7sTs8d>) returns MadeHand<4472>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2990)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QdQhTh5sAd3sKh>) returns MadeHand<3695>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3767)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2dJsQs7h5hTs9d>) returns MadeHand<454>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(7008)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KhKd2cQd3d9h3c>) returns MadeHand<4762>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2700)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4cKc6sJh5h6c9c>) returns MadeHand<2311>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5151)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9cJh5h2s4hJs7h>) returns MadeHand<3305>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4157)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<As5hQc2s7c8s4c>) returns MadeHand<1026>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6436)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5sKsAcJc3sTdTh>) returns MadeHand<3255>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4207)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcJh5dAh7dAc9d>) returns MadeHand<4080>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3382)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QdAhKhJcJd7s4c>) returns MadeHand<3476>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3986)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4sAh4cTh7cTsQd>) returns MadeHand<4477>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2985)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JhTh6h3c8s5cTc>) returns MadeHand<3112>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4350)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c3s4dKcTd8hQh>) returns MadeHand<748>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6714)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc3h9s4h3sQc8d>) returns MadeHand<1615>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5847)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6cJh2c8c7cAd7s>) returns MadeHand<2575>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4887)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3cQs6d4c7h9h9s>) returns MadeHand<2915>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4547)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h3h8dKc8s5h6s>) returns MadeHand<2726>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4736)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7sKh8s6h4s7hKs>) returns MadeHand<4802>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2660)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h4h3sTh3d4cKc>) returns MadeHand<4168>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3294)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<ThQsAsJh3d9h4s>) returns MadeHand<1112>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6350)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsJd9s3d3c4d6s>) returns MadeHand<1651>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5811)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s4cAd7c6sAcKc>) returns MadeHand<4108>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3354)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AhJs7h4hAc9s5s>) returns MadeHand<4027>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3435)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5dAh9d9cJh8c8h>) returns MadeHand<4444>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3018)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c3s6hKcAs5s6s>) returns MadeHand<5324>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2138)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h7d4c7s7cTc8h>) returns MadeHand<5351>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2111)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsAc3dJc2d9hTc>) returns MadeHand<1112>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6350)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3s8s7s6sAs3cTh>) returns MadeHand<6678>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(784)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s2hAh8h3d7c8d>) returns MadeHand<2774>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4688)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9hJs8sQcQs5hTs>) returns MadeHand<5860>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1602)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd7cQd5c3h6dKh>) returns MadeHand<3831>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3631)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c6h8c3c2hJd4c>) returns MadeHand<5854>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1608)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6cTcJhAhQd2cJd>) returns MadeHand<3466>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3996)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KcAd4c6c4hTc7h>) returns MadeHand<1934>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5528)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3sAs3d6sKh7c5d>) returns MadeHand<1711>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5751)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h8c9sAdQdJdJs>) returns MadeHand<3465>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3997)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h9s7sAc7dTs5c>) returns MadeHand<4433>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3029)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4sJsAs2d2h4c6c>) returns MadeHand<4158>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3304)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s6d8s7hQs8hQd>) returns MadeHand<4703>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2759)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s7d7hQc4d2d4c>) returns MadeHand<7168>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(294)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c6hJc9d5d9sKc>) returns MadeHand<2970>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4492)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsKh8d3s8c4s6c>) returns MadeHand<2757>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4705)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TsQs6h9cQh3s9d>) returns MadeHand<4716>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2746)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7cKs6sJd4h6dAh>) returns MadeHand<2375>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5087)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c9cTsTh5sJd8s>) returns MadeHand<3120>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4342)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h3cTc7s5d9sJc>) returns MadeHand<2020>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5442)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s7d5sKh9d9sQd>) returns MadeHand<2978>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4484)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks2hKd3cQh8h8c>) returns MadeHand<4817>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2645)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dJcAd8c2sJh6c>) returns MadeHand<3442>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4020)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h3sAh7c8dTh9h>) returns MadeHand<908>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6554)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4hTcQhAd4sJh3h>) returns MadeHand<1926>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5536)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d8cKs8hAh5c2h>) returns MadeHand<2812>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4650)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9dTsJdAs5s4s5h>) returns MadeHand<2137>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5325)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3cQdQsJc7c3s2s>) returns MadeHand<4651>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2811)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsTs6c7h4h2dJh>) returns MadeHand<979>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6483)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc7sKs9h2cTs3s>) returns MadeHand<3779>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3683)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h8cTs3d6d4sJc>) returns MadeHand<2239>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5223)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2hKh8dAc4sTd9d>) returns MadeHand<1196>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6266)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4d3sKs7s2s9cAd>) returns MadeHand<1160>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6302)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d6dQh7h6h4d2d>) returns MadeHand<2249>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5213)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d8h2h9hAhJcQd>) returns MadeHand<1486>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5976)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sJcTs7cAs5dJh>) returns MadeHand<3457>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4005)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9dKs8h4sQs4hKh>) returns MadeHand<4773>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2689)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4d7d4s4h3s9s5c>) returns MadeHand<5146>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2316)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd2dQdAc7d8d8h>) returns MadeHand<6265>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1197)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6dTh7s8cJdTd4c>) returns MadeHand<3113>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4349)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsAcQs6d2c7hJc>) returns MadeHand<4078>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3384)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d9hQc8d6sQd4c>) returns MadeHand<3531>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3931)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3sTs6cQs7c4cAh>) returns MadeHand<1063>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6399)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd5h9d6c5s8cAd>) returns MadeHand<2144>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5318)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh9d6c8h5d7sQc>) returns MadeHand<5857>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1605)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d4h8s4sJc7cQs>) returns MadeHand<1834>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5628)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc9d9c5cJsAd6d>) returns MadeHand<4620>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2842)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QhJsJcJh8d4c5c>) returns MadeHand<5631>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1831)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h7s9d5hAcTd5s>) returns MadeHand<2129>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5333)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td4c2d4s6cQdQs>) returns MadeHand<4661>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2801)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s4s2s8sQsTd2d>) returns MadeHand<6165>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1297)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c4h7sJd2hQsQc>) returns MadeHand<3575>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3887)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8sKsTd7d9sTh8d>) returns MadeHand<4520>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2942)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c9d8s2s3s9sJh>) returns MadeHand<2893>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4569)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd6sQd7d9s5hKc>) returns MadeHand<775>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6687)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JcAc6d2s8h9h6s>) returns MadeHand<2356>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5106)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d6c4h8c6dQc9d>) returns MadeHand<4354>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3108)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d2dTsJdAs9c3c>) returns MadeHand<989>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6473)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qc3cJh8c3dKd9d>) returns MadeHand<1661>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5801)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s8d5s9c4s3cKs>) returns MadeHand<519>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6943)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3s8cKdKhJdTs9s>) returns MadeHand<3816>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3646)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d8h3c7hJd5h6d>) returns MadeHand<2447>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5015)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d3h9sQs7s9c8h>) returns MadeHand<4387>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3075)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TdQs3s3c6c8d4d>) returns MadeHand<1607>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5855)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h9s7c7d2s9h4h>) returns MadeHand<4425>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3037)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4sJh7dQh9d5c8c>) returns MadeHand<427>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(7035)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c6s6d2dAd9c8s>) returns MadeHand<2342>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5120)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh7s2s5cJsQh9h>) returns MadeHand<3367>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4095)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks7sJhAhKdQc6h>) returns MadeHand<3916>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3546)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4cJhQs8hKc2sTd>) returns MadeHand<783>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6679)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TcJc9s2d5c9dQc>) returns MadeHand<2936>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4526)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d5dJd7d8h3c6c>) returns MadeHand<2667>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4795)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s7hJdKd3c4dQd>) returns MadeHand<762>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6700)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh6h5h8dKcQd6s>) returns MadeHand<4795>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2667)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TsTdQs4h2cJs4d>) returns MadeHand<4475>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2987)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c3h9dJdKc2s9h>) returns MadeHand<2968>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4494)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8sQsTs4h5sQhAc>) returns MadeHand<3676>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3786)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c2sTc6h7cJh9s>) returns MadeHand<240>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(7222)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs2hKs4sJh9sQc>) returns MadeHand<3640>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3822)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jc2s9h6sQc7cTc>) returns MadeHand<454>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(7008)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dKh8c9d9sJd7d>) returns MadeHand<4443>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3019)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcTc8d6d2sAsKc>) returns MadeHand<4116>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3346)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dThJh2dTs4sAc>) returns MadeHand<3236>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4226)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dJc2h8s4c9hJs>) returns MadeHand<3312>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4150)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsJhKdTcKhAsJd>) returns MadeHand<5862>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1600)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s7cJdAs6s2cKd>) returns MadeHand<2595>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4867)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd2c6sAc2hJc7h>) returns MadeHand<1495>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5967)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs2d4d9d7s6h3c>) returns MadeHand<299>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(7163)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<As4cKs4sQsJsQc>) returns MadeHand<7134>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(328)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2sAh5s8h4h7c9s>) returns MadeHand<851>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6611)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7sKd4cThQh6d5d>) returns MadeHand<735>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6727)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ac8d7cJh5s9h8h>) returns MadeHand<2796>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4666)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c4sJd4d8d7hKd>) returns MadeHand<1870>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5592)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2s9cJc8c9hJs5d>) returns MadeHand<4616>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2846)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JsTsKc4h8sKs6c>) returns MadeHand<3815>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3647)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<ThAd2s6hTdKh3s>) returns MadeHand<3251>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4211)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2s8h8c3s9dJdJh>) returns MadeHand<4605>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2857)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6cQh2h7c8dJh6h>) returns MadeHand<2274>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5188)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c8s8hJs5h7d8c>) returns MadeHand<7217>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(245)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8h6cKd7dQs5h2c>) returns MadeHand<699>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6763)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qc2c9c9dJd4s2s>) returns MadeHand<4376>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3086)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d4sJs6sTsTcQc>) returns MadeHand<3153>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4309)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c4cKhJh3hAcKc>) returns MadeHand<4763>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2699)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js8d7dTdAcQsTs>) returns MadeHand<3246>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4216)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d3cKh6d9cQc4c>) returns MadeHand<709>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6753)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<As6c6s9c3hJd8c>) returns MadeHand<2356>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5106)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7cQc9cJc3hAdTc>) returns MadeHand<6317>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1145)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c6cTd9d7s8dTc>) returns MadeHand<5858>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1604)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5sKs7h6c4sKd7c>) returns MadeHand<4801>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2661)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c4sJc7d4d2d6s>) returns MadeHand<1782>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5680)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th5d7s7h9s6s9c>) returns MadeHand<4429>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3033)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TsTh4hKc6d3sAd>) returns MadeHand<3251>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4211)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5hAc9s5sAd4c6d>) returns MadeHand<4902>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2560)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4cAd7d2hKcAc9d>) returns MadeHand<4108>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3354)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks4s2d4hJs3sJc>) returns MadeHand<4564>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2898)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh4d6d8dKdJs7h>) returns MadeHand<3397>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4065)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h2c2d4cTdThQd>) returns MadeHand<7147>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(315)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsJhTd7d9dQcJd>) returns MadeHand<3466>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3996)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qh7d3sJs3c4dAc>) returns MadeHand<1706>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5756)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c7d5dKsTdQd7s>) returns MadeHand<2540>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4922)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KcTcJs7cKh6s4c>) returns MadeHand<3814>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3648)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KhAhQhTc5dKc7s>) returns MadeHand<3915>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3547)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c8sKc2d4h5d2s>) returns MadeHand<4179>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3283)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s6dKh4h4c4d2c>) returns MadeHand<7167>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(295)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sTh2c3dTs4hJs>) returns MadeHand<3116>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4346)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd3dKs9sKdAd5d>) returns MadeHand<7100>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(362)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h7d8hAd5cAs2s>) returns MadeHand<4901>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2561)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hAcQh8s8c6cTh>) returns MadeHand<2805>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4657)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9dQsQd2c5h7s2d>) returns MadeHand<4638>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2824)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks8cJd9d8h5c6s>) returns MadeHand<2751>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4711)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d8s5s7sJs4h4s>) returns MadeHand<6014>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1448)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d8hAhAs5h4h3d>) returns MadeHand<3970>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3492)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c2cQcJd7s4h9s>) returns MadeHand<421>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(7041)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TcKd4sAs9sTd4d>) returns MadeHand<4477>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2985)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js3cQh4h8s7dQd>) returns MadeHand<3581>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3881)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KcJdTsJcAc7hKd>) returns MadeHand<4851>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2611)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td2sQcQd2cKd3h>) returns MadeHand<4641>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2821)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8s7h6hTc7d2s3c>) returns MadeHand<2426>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5036)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dJd6c4hQd8h2h>) returns MadeHand<2713>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4749)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hQs2hJcKcKh5d>) returns MadeHand<3856>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3606)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c9h8c6s3c7s2s>) returns MadeHand<2851>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4611)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcKhKs9dTh3d2h>) returns MadeHand<3852>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3610)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3s4cQs4hTd3d5d>) returns MadeHand<4167>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3295)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s6d6h8d5c9sQs>) returns MadeHand<4244>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3218)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcKsJdQd4sJs9s>) returns MadeHand<3476>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3986)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6cAs3sQh8h3h9c>) returns MadeHand<1704>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5758)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JcAsTh3cTc8s7h>) returns MadeHand<3236>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4226)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5dJd7c5cKc9sJh>) returns MadeHand<4575>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2887)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dKhJc5hTd3s5d>) returns MadeHand<2092>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5370)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3dJs2c9hKc9d4c>) returns MadeHand<2967>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4495)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc8sQh5h3sAd9c>) returns MadeHand<1076>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6386)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JsKc2d8sTd8cJd>) returns MadeHand<4608>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2854)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s8sAd9h5sAs6d>) returns MadeHand<4913>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2549)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d8d2c8h4hKc3s>) returns MadeHand<2734>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4728)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AdJhQc7c4d5sTd>) returns MadeHand<1110>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6352)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs9d8cJsTdKd8s>) returns MadeHand<5861>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1601)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsJs8c9sKdAh8h>) returns MadeHand<2816>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4646)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9dJd6sKdThAd3s>) returns MadeHand<1232>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6230)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh3c6h2h7dQh9h>) returns MadeHand<6569>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(893)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7sJd6dTd9d4c4h>) returns MadeHand<1800>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5662)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d5sTc4d8sAd6c>) returns MadeHand<882>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6580)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th8h5cKsJh7dTc>) returns MadeHand<3191>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4271)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsJs6cJh7s4dTs>) returns MadeHand<3410>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4052)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JsKsJdAd4s2c2h>) returns MadeHand<4543>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2919)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h5sQs8d6d7s3d>) returns MadeHand<2035>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5427)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsQhQc8d2d9c2s>) returns MadeHand<4641>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2821)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcJs9c6hThTsQh>) returns MadeHand<3246>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4216)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h6s4c3c4dKh9d>) returns MadeHand<1855>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5607)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c8c2cKhKcTc7h>) returns MadeHand<6414>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1048)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td3d6d4dQdQc8d>) returns MadeHand<6207>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1255)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2cTs7d7h3s6c4c>) returns MadeHand<2420>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5042)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h8dAhQc3cJs4d>) returns MadeHand<1097>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6365)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ac4h8h5s9sQdKs>) returns MadeHand<1260>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6202)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AhJhKc8dTs4sKh>) returns MadeHand<3906>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3556)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8sKs2d7d3c8h7c>) returns MadeHand<4366>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3096)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc4dTsQh4c7hAs>) returns MadeHand<4477>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2985)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs9h6sKc7c4h2s>) returns MadeHand<714>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6748)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh8c3cQd5d9hAd>) returns MadeHand<1104>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6358)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2hTd7hAh7dAcKd>) returns MadeHand<4928>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2534)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JcKc5h9cQhJdJh>) returns MadeHand<5643>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1819)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d9s9dAs3d8s5d>) returns MadeHand<3001>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4461)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8h5s9s7sKh2d3d>) returns MadeHand<523>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6939)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h3c8s9d9c8cJs>) returns MadeHand<4441>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3021)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c2cQd4s3cTc2d>) returns MadeHand<1388>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6074)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd6cJd5cKs2c9h>) returns MadeHand<774>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6688)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d2d6s7h3h9s8c>) returns MadeHand<2191>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5271)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c8h5h9h2h6d8s>) returns MadeHand<4351>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3111)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d6c8h2h3h6s4d>) returns MadeHand<4218>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3244)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc6s5h5dQc2c8c>) returns MadeHand<2047>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5415)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th9d2hQcKs3s4s>) returns MadeHand<744>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6718)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th5h8cAcKd5dTd>) returns MadeHand<4488>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2974)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4sAsJd9s8s7h7s>) returns MadeHand<6713>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(749)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c8s5cKsAs8h7c>) returns MadeHand<2812>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4650)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s8s7c3c2s7dQs>) returns MadeHand<5366>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2096)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cKh5s7d4d3sAh>) returns MadeHand<1146>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6316)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c8h5s7cJh4dQc>) returns MadeHand<1834>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5628)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3cJsQhTsAd5cQd>) returns MadeHand<3686>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3776)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh4h9sQh7s8dQc>) returns MadeHand<3588>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3874)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ah7c2hTs6c9d9s>) returns MadeHand<3008>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4454)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KcJs5h3c9s9dAd>) returns MadeHand<3035>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4427)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h2h5c8s7c6c3h>) returns MadeHand<2396>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5066)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsQh3hKdAhJhQs>) returns MadeHand<4983>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2479)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d5h9sAd2h4s8s>) returns MadeHand<5853>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1609)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcKh4hTcQhQcTs>) returns MadeHand<4730>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2732)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h7sJs4c5cKd7h>) returns MadeHand<4289>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3173)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc6c8h5c8s2c5d>) returns MadeHand<4344>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3118)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d7h9h6d3hTdTh>) returns MadeHand<4506>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2956)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5sJsQsTs5dKhKc>) returns MadeHand<4784>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2678)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc2s9hQh6dKhTd>) returns MadeHand<3852>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3610)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h7c9c5c9sQs4h>) returns MadeHand<2915>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4547)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hKc8s5c4s8c3s>) returns MadeHand<5439>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2023)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d6cAcJcJh4s4h>) returns MadeHand<4565>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2897)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ac6dQdQs2d5sKd>) returns MadeHand<3691>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3771)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KcAc5s3s6s4s3d>) returns MadeHand<1710>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5752)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ts3dJc3sJh4dKc>) returns MadeHand<4553>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2909)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks6cJd9c2d7hJs>) returns MadeHand<3403>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4059)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TdJdAh6h2s9sTs>) returns MadeHand<3237>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4225)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5h2cJc7h2h6dTc>) returns MadeHand<1358>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6104)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4d2h3cTh4sQc2s>) returns MadeHand<4156>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3306)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ad9d4s8sTd2c8c>) returns MadeHand<2789>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4673)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sTsJhJd9c4s3c>) returns MadeHand<4617>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2845)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hTcQd7s7hJdAd>) returns MadeHand<2586>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4876)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h9c8h4sJcKc9s>) returns MadeHand<5510>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1952)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc8sQsKh5s9c6d>) returns MadeHand<748>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6714)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3dAs4d9h8sTsJc>) returns MadeHand<992>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6470)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4h7d2s3dAcKs9c>) returns MadeHand<1160>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6302)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8h9h9d4h5sAh6h>) returns MadeHand<6709>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(753)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hAhQcTh6sQh7d>) returns MadeHand<3676>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3786)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c3hQcJs5dJc7s>) returns MadeHand<4574>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2888)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sThKsAc6c5dJc>) returns MadeHand<1232>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6230)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c4d9s6d7d3sJd>) returns MadeHand<2232>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5230)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ad3dAc2dQs3s4s>) returns MadeHand<4883>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2579)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d3cTdTcJc4cJd>) returns MadeHand<4623>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2839)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s8hJsTsAs2s2d>) returns MadeHand<6838>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(624)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6hJhJd3s6d5d2c>) returns MadeHand<4580>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2882)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4sJc8sTc6cQcKs>) returns MadeHand<783>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6679)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KhTd7sQhTsJh5h>) returns MadeHand<3201>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4261)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sJc2hKsAd9d6h>) returns MadeHand<3035>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4427)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h2sTd7d5c5h9c>) returns MadeHand<1991>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5471)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7cKh2d6c3cAhKc>) returns MadeHand<3876>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3586)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4s6dJd8cAhQd2d>) returns MadeHand<1096>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6366)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7dKhThAs4hAcKs>) returns MadeHand<4992>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2470)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9cTc2sAdQh6c5h>) returns MadeHand<1074>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6388)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JcJhAdQd4h7cJd>) returns MadeHand<5653>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1809)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s7sTsJs6c5sTh>) returns MadeHand<6102>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1360)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4d3hTcAcAh9s5c>) returns MadeHand<3997>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3465)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Tc3s8d2dTsKsKc>) returns MadeHand<4836>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2626)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ah7s4cQh6hAd2h>) returns MadeHand<4051>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3411)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KhTd7s5sTc9cJd>) returns MadeHand<3192>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4270)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3sJs7c4h2h7hTs>) returns MadeHand<2456>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5006)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d9cQcQhTd9hKd>) returns MadeHand<7233>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(229)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c5dJd7h5sAhTs>) returns MadeHand<5256>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2206)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QhQd4sAdTd4c3c>) returns MadeHand<4664>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2798)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h3c3d5cJcKhTs>) returns MadeHand<1652>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5810)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c4dKhQs9h6cKc>) returns MadeHand<4773>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2689)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td4d8sJdKs2sQs>) returns MadeHand<783>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6679)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2dJc5cJh9hAcQh>) returns MadeHand<3465>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3997)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6hQd9d2dKs3dKh>) returns MadeHand<3842>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3620)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s3s6sJcJsAdAc>) returns MadeHand<4969>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2493)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QsTc8d5h6s6dQd>) returns MadeHand<4683>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2779)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd6c7c7hJcJsKh>) returns MadeHand<7253>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(209)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KcJhQs4sAdJsQd>) returns MadeHand<4741>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2721)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsQc9h8d9c2cTd>) returns MadeHand<3025>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4437)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hKd3hTs4d6hJd>) returns MadeHand<656>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6806)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JdTd4c7dKcAh2h>) returns MadeHand<1230>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6232)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h6hThKc6s8sQd>) returns MadeHand<2320>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5142)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s8d8s7h9sQcTd>) returns MadeHand<2708>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4754)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c6h4hQc2dTcTd>) returns MadeHand<3135>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4327)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QhKh6h2c3dQs6s>) returns MadeHand<4685>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2777)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cTdJhKd3s2cAs>) returns MadeHand<1231>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6231)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th6h2sKs2hQsJc>) returns MadeHand<1441>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6021)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8h6s9dKhJh2h5d>) returns MadeHand<635>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6827)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4h7dQcJh4s8s6s>) returns MadeHand<1834>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5628)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3cAd9hKh5h4h4c>) returns MadeHand<1933>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5529)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd8h8c3c6d8s5s>) returns MadeHand<5423>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2039)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d4c8d8h4d2dJd>) returns MadeHand<6004>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1458)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c6c9sAsKh8hTh>) returns MadeHand<3034>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4428)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c6d4s8s5d4hQh>) returns MadeHand<5168>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2294)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh4s4h6hAh4cTh>) returns MadeHand<6836>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(626)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<ThKs8h5d3c3s8c>) returns MadeHand<4322>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3140)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks7dJs2dTcJc4d>) returns MadeHand<3410>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4052)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h7s2c9c6d8hJh>) returns MadeHand<1353>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6109)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s5d8c6cKd8sKh>) returns MadeHand<4812>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2650)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8s3cKsAdAs4dAc>) returns MadeHand<5848>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(1614)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3sQd7d9d3h4cQh>) returns MadeHand<4649>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2813)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TdAh5s5d6s4d7d>) returns MadeHand<2127>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5335)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c4d4hTs9h6cQh>) returns MadeHand<4398>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3064)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8h8c4h6dQd3c9d>) returns MadeHand<2700>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4762)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6dAs7s8cJhJcTh>) returns MadeHand<3456>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4006)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8sJh6s7sAsJd2h>) returns MadeHand<3442>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4020)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcTc3s7d8s3cAh>) returns MadeHand<1705>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5757)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<As8d9dAc2cKc9h>) returns MadeHand<4950>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2512)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9cTsThJhKh7d5c>) returns MadeHand<3192>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4270)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cKh9hKcJhJsJc>) returns MadeHand<7258>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(204)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qc7hAh2d4cJd5s>) returns MadeHand<1090>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6372)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s2c6s2dAs7dKh>) returns MadeHand<1491>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5971)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh7d9sKd3cKc5h>) returns MadeHand<5747>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1715)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TdAdJc7s6d4dKh>) returns MadeHand<1230>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6232)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dKh7c2h9s9hAd>) returns MadeHand<3033>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4429)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TsQd3s4sJdKhKc>) returns MadeHand<3861>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3601)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6s3dAs5hQd9dKc>) returns MadeHand<1258>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6204)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsQs3d2cJh7dAc>) returns MadeHand<4078>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3384)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2sKcQs2d9sTc5h>) returns MadeHand<1440>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6022)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s2d2s9dQh9hJh>) returns MadeHand<7224>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(238)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2dAc8d9dKd3c9s>) returns MadeHand<3033>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4429)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JcJd9h4sQdJh5h>) returns MadeHand<5632>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(1830)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh2s6s9dAd5cQd>) returns MadeHand<1102>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6360)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td5h6c4hKd7h6d>) returns MadeHand<2302>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5160)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dTc8c6d8h5h6s>) returns MadeHand<7216>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(246)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9hKc6cQd5hTd8c>) returns MadeHand<748>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6714)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6cAdAh7hQd9dKh>) returns MadeHand<4134>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3328)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js8h2d8cTs2c9s>) returns MadeHand<4309>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3153)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h5c3sKs9dAd4d>) returns MadeHand<5853>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(1609)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2hKc5c4sTdQc3d>) returns MadeHand<726>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6736)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c5h8d2c5s2dAh>) returns MadeHand<4180>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3282)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TsAd7d8s9d7h7c>) returns MadeHand<5387>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2075)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7sTd9cTs2dKhKd>) returns MadeHand<4837>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2625)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c4hQhAcKd8hKs>) returns MadeHand<4774>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2688)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c9dTcTs4sKd3s>) returns MadeHand<3180>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4282)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sJsAd4h4d3h3c>) returns MadeHand<4169>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3293)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsAhQd3sQs2s5s>) returns MadeHand<6857>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(605)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7d6c5cQhTs7s2d>) returns MadeHand<2486>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4976)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d6dJhAc7d6h4d>) returns MadeHand<2355>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5107)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5s8cTcJc6c2cTs>) returns MadeHand<6080>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1382)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ah7d5dAdQh2d4d>) returns MadeHand<6653>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(809)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd4hTd5c4cKd8c>) returns MadeHand<1880>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5582)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd7d3cKc8cJd4h>) returns MadeHand<3801>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3661)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hJsJhQdKh3c6h>) returns MadeHand<3419>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4043)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c6dKd3h2sJhKs>) returns MadeHand<4794>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2668)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h4c7s6sJdQcKd>) returns MadeHand<763>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6699)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8hQd4s2h8c3cJs>) returns MadeHand<2711>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4751)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh5c7d6s5hTs7h>) returns MadeHand<4287>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3175)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcAdKh5c8hQhKc>) returns MadeHand<4994>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2468)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h8hTs9sKd2s7d>) returns MadeHand<2524>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4938)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc6s4sQd8h3d9d>) returns MadeHand<719>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6743)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4d2c3s7d4c7s7h>) returns MadeHand<7202>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(260)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AcJhTs5s9c4hAs>) returns MadeHand<4036>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3426)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AsJcJh9s8h2cTd>) returns MadeHand<3457>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4005)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6dQd9s3cJh2sTs>) returns MadeHand<453>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(7009)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dKc9sQs3c7sTc>) returns MadeHand<747>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6715)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KdQcJd9dAh9s4c>) returns MadeHand<3036>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4426)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc4dAhTd6c7h3c>) returns MadeHand<1183>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6279)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JdAc3hKc9sJh2h>) returns MadeHand<3474>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3988)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h4d6c2h8h7d8d>) returns MadeHand<4361>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3101)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Td6sAs8hTcKcQc>) returns MadeHand<3256>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4206)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7h7c3dQdQs4dJd>) returns MadeHand<4695>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2767)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AhKs7h8c5h4sTd>) returns MadeHand<1189>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6273)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8c9dQh6c7h3d9h>) returns MadeHand<2921>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4541)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7s3cAc7cJhKc9s>) returns MadeHand<2595>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4867)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4dThTc5hAs8s9c>) returns MadeHand<3229>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4233)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8c2dQhKs7h3s6c>) returns MadeHand<699>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6763)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AdQs2dAc3cTcTs>) returns MadeHand<4960>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2502)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d5sAcAh2d6c6s>) returns MadeHand<4913>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2549)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd9c4h8c7c7h6s>) returns MadeHand<2517>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4945)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<JhQc5sKc7c3dKd>) returns MadeHand<3858>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3604)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qh3dJs8sKd3cTh>) returns MadeHand<1661>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5801)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2h7c8c8dAd4dJd>) returns MadeHand<2795>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4667)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd7hAd9s9d6sKh>) returns MadeHand<3036>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4426)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9c8c3d8hTs6cKd>) returns MadeHand<2744>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(4718)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c5hThKsAh6cQs>) returns MadeHand<1265>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6197)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d7s9dQh5c4cKs>) returns MadeHand<720>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6742)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3sAh6hJh7hJd2s>) returns MadeHand<3436>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4026)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9hJd8s8c8h4d2h>) returns MadeHand<5425>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2037)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7c3sKh6s8dTcJc>) returns MadeHand<657>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6805)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ac8sAs3cKd5cTh>) returns MadeHand<4116>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3346)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c3s4h7dAsQsKc>) returns MadeHand<1716>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5746)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d5cQcJcJdJs5s>) returns MadeHand<7251>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(211)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5c7hQcKdAh2d9d>) returns MadeHand<1259>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(6203)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<QcKsTh2h5hJs3c>) returns MadeHand<780>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6682)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ac7hJh5dThAs3h>) returns MadeHand<4034>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3428)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9sJh9c7hAs2sQc>) returns MadeHand<3026>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4436)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd5d7c4s9dKh2h>) returns MadeHand<713>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6749)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<AdTdQsAc8dKcTh>) returns MadeHand<4961>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2501)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4hThJs5cAd8d5h>) returns MadeHand<2137>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5325)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<7sQcQdKd9d5d7c>) returns MadeHand<4696>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2766)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9cAc3h3sJc4sJd>) returns MadeHand<4554>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2908)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6c7d6sJdQh9sTd>) returns MadeHand<2276>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5186)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6hAc5h4h6dAsQc>) returns MadeHand<4916>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2546)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KsAh2h5s9h7s4c>) returns MadeHand<1161>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6301)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9dAd8sAhQc6h7h>) returns MadeHand<4064>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3398)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd5cKh9hQc6cKc>) returns MadeHand<4859>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2603)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2d2hKh6s4c2s5c>) returns MadeHand<5043>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2419)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js9cTh8hAcTs7s>) returns MadeHand<5859>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(1603)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9hQh4dJc2d4h6d>) returns MadeHand<1835>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5627)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c5h8sAhQd2h4d>) returns MadeHand<1483>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(5979)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kd4c6dTs7h4h6c>) returns MadeHand<4234>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3228)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh8h3s9d2sQh6d>) returns MadeHand<426>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(7036)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<KhKsQc3cQs3d9s>) returns MadeHand<4859>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2603)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Js3s8h5s7hTd2h>) returns MadeHand<224>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(7238)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6d8cAd5s6sKc5h>) returns MadeHand<4246>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3216)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6h3dKs8s9d3s4h>) returns MadeHand<1637>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(5825)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hJh2s7c8s3s9s>) returns MadeHand<1573>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5889)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9h2sJhQs6d3s8h>) returns MadeHand<426>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(7036)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4c2s7hKcTh5sAs>) returns MadeHand<1182>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6280)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2dQh4d9d2h8dKh>) returns MadeHand<1439>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6023)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ac5h9dTs3hKc4h>) returns MadeHand<1193>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6269)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<4h9s7dJd6cQh2d>) returns MadeHand<421>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(7041)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2hKh7hAc6hQcAh>) returns MadeHand<6992>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(470)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3dQc3s4c9h4hAs>) returns MadeHand<4169>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3293)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2dQhTh2s9d9hQd>) returns MadeHand<4716>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2746)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3c4s6s6d7c9c6h>) returns MadeHand<5278>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2184)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2c6h8sKc2h5s7h>) returns MadeHand<1411>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6051)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<5d2d8sAh5cAc4s>) returns MadeHand<4901>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2561)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jh2sQd9s7s6hJs>) returns MadeHand<3367>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4095)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd3s7h2cKc9s2s>) returns MadeHand<1431>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6031)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2sKsJc7dKhTd8d>) returns MadeHand<3815>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3647)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th4s9c3c6h2s6s>) returns MadeHand<2209>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5253)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8sTs2cTd7dQs3h>) returns MadeHand<3141>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(4321)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<6sTh6hAs6d2c2h>) returns MadeHand<7188>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(274)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qd6d8sAc8d4cQs>) returns MadeHand<4708>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(2754)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3dAdKsTdQc2d4h>) returns MadeHand<1263>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6199)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9d4c8h5dAc2c5c>) returns MadeHand<2122>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5340)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kc4c9cAs8s4sQs>) returns MadeHand<1936>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.queen, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5526)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Qs8hQh9s7d4d2h>) returns MadeHand<3532>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(3930)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9s2s6dAcTs3dKh>) returns MadeHand<1194>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.king, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(6268)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d6c7hQcTsTd5c>) returns MadeHand<3135>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(4327)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Kh5d6s6d2c5cJc>) returns MadeHand<4245>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3217)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<9dQh4s2s2cAhTc>) returns MadeHand<1485>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.nine, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5977)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3hAs5hQs8hAh3c>) returns MadeHand<4883>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2579)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<2s8s8h6dJc7sJh>) returns MadeHand<4604>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(2858)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3s7h5h7s5dAc9c>) returns MadeHand<4290>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.spade),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.five, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(3172)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h9s8c7d3c2d6c>) returns MadeHand<1531>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5931)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d9s2c2d7sAh8s>) returns MadeHand<1462>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(6000)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8cTc5s2c7d5c8s>) returns MadeHand<4341>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.spade),
          Card(rank: Rank.deuce, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.five, suit: Suit.club),
          Card(rank: Rank.eight, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(3121)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8c7s8h8dAdQh7h>) returns MadeHand<7217>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.heart),
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.diamond),
          Card(rank: Rank.queen, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.heart),
        })),
        equals(MadeHand.fromIndex(245)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<TsJc6s3hTdAh6d>) returns MadeHand<4499>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.club),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.ten, suit: Suit.diamond),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.six, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(2963)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3h9h7s6c4hJhKc>) returns MadeHand<630>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.heart),
          Card(rank: Rank.nine, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.four, suit: Suit.heart),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(6832)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Jd7h4d2sTc9c9s>) returns MadeHand<2899>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.heart),
          Card(rank: Rank.four, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.ten, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.club),
          Card(rank: Rank.nine, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4563)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8dThKd6s8sAh3s>) returns MadeHand<2814>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.spade),
          Card(rank: Rank.ace, suit: Suit.heart),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(4648)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Th7sJs3cKhKs4d>) returns MadeHand<3814>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.spade),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.king, suit: Suit.heart),
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.diamond),
        })),
        equals(MadeHand.fromIndex(3648)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ts6d7d2sJh7c5c>) returns MadeHand<2458>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.ten, suit: Suit.spade),
          Card(rank: Rank.six, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.spade),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5004)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<8d7cJdJhQd9s9c>) returns MadeHand<4618>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.eight, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.jack, suit: Suit.diamond),
          Card(rank: Rank.jack, suit: Suit.heart),
          Card(rank: Rank.queen, suit: Suit.diamond),
          Card(rank: Rank.nine, suit: Suit.spade),
          Card(rank: Rank.nine, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(2844)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<Ks4c7d2d4s8c3s>) returns MadeHand<1851>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.king, suit: Suit.spade),
          Card(rank: Rank.four, suit: Suit.club),
          Card(rank: Rank.seven, suit: Suit.diamond),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.four, suit: Suit.spade),
          Card(rank: Rank.eight, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.spade),
        })),
        equals(MadeHand.fromIndex(5611)),
      );
    });

    test(
        'MadeHand.from(ImmutableCardSet<3d7c5d6c3c2d8c>) returns MadeHand<1516>',
        () {
      expect(
        MadeHand.best(ImmutableCardSet.from({
          Card(rank: Rank.trey, suit: Suit.diamond),
          Card(rank: Rank.seven, suit: Suit.club),
          Card(rank: Rank.five, suit: Suit.diamond),
          Card(rank: Rank.six, suit: Suit.club),
          Card(rank: Rank.trey, suit: Suit.club),
          Card(rank: Rank.deuce, suit: Suit.diamond),
          Card(rank: Rank.eight, suit: Suit.club),
        })),
        equals(MadeHand.fromIndex(5946)),
      );
    });
  });
}
