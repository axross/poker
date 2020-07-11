import 'package:poker/poker.dart';
import 'package:test/test.dart';

void main() {
  test("Hand.bestFrom() returns", () {
    for (final entry in _handAndIds.entries) {
      final hand = Hand.bestFrom(entry.key);

      expect(hand.id, equals(entry.value));
    }
  });
}

final _handAndIds = {
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 5581,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 5850,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 3177,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 4894,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 3173,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 504,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 3464,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 6315,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 4225,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 2177,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 2842,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 3263,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 3574,
  [
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 4704,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 6420,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 4869,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 244,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 2835,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 1611,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 2769,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 5336,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 7112,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 318,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 6195,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 6680,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 6483,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 6727,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 6885,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 6912,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 7036,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 3293,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 4673,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 5143,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 3834,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 4596,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 6919,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 2833,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 5966,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 6295,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 6736,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 2804,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 2350,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 3614,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 5410,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 5406,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 3684,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 6104,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 5096,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 5549,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 186,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 3556,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 6371,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 5765,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 3611,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 3199,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 6130,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 7291,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 4216,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 2864,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 2512,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 4866,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 2846,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 6478,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 1605,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 3769,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 5848,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 4507,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 5415,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 5765,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 3346,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 3110,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 3866,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 6499,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 6350,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 6203,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 1600,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 5172,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 4006,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 2845,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 2572,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 3845,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 4041,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 2779,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 4043,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 5553,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 6389,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 6084,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 4940,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 4501,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 5391,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 4314,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 2854,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 2568,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 3339,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 5757,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 3188,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 6749,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 5538,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 2848,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 6352,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 3151,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 2831,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 3062,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 4453,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 5746,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 2820,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 3426,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 3293,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 6686,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 3361,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 2858,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 6186,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 3867,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 181,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 5442,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 7346,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 6273,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 1886,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 3261,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 4646,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 3610,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 1607,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 5825,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 6888,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 3062,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 2848,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 1603,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 2936,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 6580,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 5862,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 4360,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 3110,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 2723,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 2673,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 5271,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 415,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 3987,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 2855,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 7237,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 6420,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 201,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 6753,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 1603,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 3426,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 6315,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 2579,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 6436,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 5203,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 4541,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 5105,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 2892,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 4227,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 3851,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 3084,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 6359,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 3786,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 2780,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 6744,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 1606,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 1389,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 7097,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 2558,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 3272,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 1608,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 2336,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 2832,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 5626,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 3573,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 3320,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 1625,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 3098,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 5528,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 6421,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 2963,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 2525,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 4612,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 2945,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 6699,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 3716,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 2612,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 4676,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 3051,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 1764,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 5160,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 5545,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 3821,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 5086,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 6763,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 3043,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 6022,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 1285,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 4534,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 198,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 5087,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 5100,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 3766,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 4233,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 5966,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 4886,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 5895,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 3793,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 6358,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 6279,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 6723,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 5222,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 4217,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 5696,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 5545,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 3398,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 7009,
  [
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 2716,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 3496,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 7009,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 2486,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 7253,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 1605,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 87,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 1458,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 4162,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 4869,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 6102,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 4483,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 5098,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 3840,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 4251,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2414,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 5442,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 5372,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 6083,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 429,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 1604,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 2974,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 6315,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 4327,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 6625,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 5187,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 6722,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2624,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 3306,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 4974,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 3040,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 3823,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 3084,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 3029,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 4207,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 6359,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 2910,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 3996,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 4490,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 3040,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 241,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 2627,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 2634,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 3866,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 6031,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 4455,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 2655,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 3576,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 3822,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 942,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 6022,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 3393,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 4015,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 4270,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 5367,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 3118,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 3877,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 3326,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 2909,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 810,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 5194,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 4967,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 3832,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 3924,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 3307,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 6194,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 4216,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 6799,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 1896,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 6269,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 5396,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 6680,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 1808,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 3285,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 6215,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 3350,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 5090,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 1333,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 7061,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 175,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 1603,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 6238,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 4481,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 5087,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 4945,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 6499,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 2804,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 3255,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 3667,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 4648,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 2821,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 4657,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 4681,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 2776,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 4437,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 298,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 1603,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 1609,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 1603,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 5194,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 2528,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 5088,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 3029,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 3197,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 5591,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 2416,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 5812,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 2672,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 5801,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 6769,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 4938,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 4872,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 1605,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 6909,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 2991,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 7219,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 2634,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 5756,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 6509,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 2679,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 5202,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 5310,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 5408,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 5187,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 3062,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 6554,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 7020,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 6714,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 3250,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 3019,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 3876,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 6076,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 3794,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 265,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 6359,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 6187,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 6131,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 3998,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 3305,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 4939,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 6189,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 6908,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 6472,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 5126,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 132,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 4278,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 6187,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 6415,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 4450,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 4878,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 6194,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 5966,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 5847,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 6121,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 5882,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 2504,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 7056,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 5378,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 6021,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 6505,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 4653,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 5099,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 6721,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 2710,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 6266,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 6075,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 6301,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 2629,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 3575,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 2580,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 4461,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 4009,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 5088,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 3846,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 4226,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 3249,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 4876,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 3131,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 4285,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 3074,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 2546,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 6387,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 6239,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 5848,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 3326,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 7015,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 6321,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 2853,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 4658,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 1625,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 5031,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 7217,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 3076,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 3205,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 4280,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 1528,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 4377,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 2820,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 3682,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 1101,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 2702,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 6267,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 6195,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 3776,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 4381,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 2754,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 4481,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 3249,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 4876,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 4211,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 4647,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 2758,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 6414,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 1607,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 5765,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 7246,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 4310,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 4020,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 5765,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 1600,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 2604,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 2724,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 3087,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 2941,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 6798,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 3649,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 4527,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 6230,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 226,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 3932,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 6246,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 3249,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 5317,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 2857,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 7042,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 2864,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 4939,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 3306,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 3611,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 4059,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 5801,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 2591,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 5429,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 3631,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 3000,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 3560,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 7022,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 1839,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 7009,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 4563,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2645,
  [
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 2627,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 4426,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 6231,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 5663,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 4755,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 5966,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 2661,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 3219,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 6882,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 3605,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 5611,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 3337,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 3462,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 4308,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 3003,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 3646,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 3721,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 1689,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 6300,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 5052,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 5333,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 3559,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 5141,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 2711,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 2633,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 6194,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 2887,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 3353,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 2600,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 4445,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 2273,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 3491,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 6904,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 3462,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 3338,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 3212,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 1140,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 2009,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 7121,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 7020,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 4323,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 3902,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 6799,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 186,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 4327,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 1355,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 4658,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 1840,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 3771,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 1808,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 4006,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 1475,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 3284,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 5582,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 2207,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 2933,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 2847,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 2501,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 3875,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 195,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 4088,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 5318,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 3014,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 4701,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 4102,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 5802,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 3866,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 4570,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 5847,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 1605,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 4140,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 5414,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 4888,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 4767,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 4490,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 353,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 6251,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 2844,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 3328,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 2990,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 3767,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 7008,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 2700,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 5151,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 4157,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 6436,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 4207,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 3382,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 3986,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 2985,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 4350,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 6714,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 5847,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 4887,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 4547,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 4736,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 2660,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 3294,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 6350,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 5811,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 3354,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 3435,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 3018,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 2138,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 2111,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 6350,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 784,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 4688,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 1602,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 3631,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 1608,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 3996,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 5528,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 5751,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 3997,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 3029,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 3304,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 2759,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 294,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 4492,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 4705,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 2746,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 5087,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 4342,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 5442,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 4484,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 2645,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 4020,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 6554,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 5536,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 4650,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 5325,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 2811,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 6483,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 3683,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 5223,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 6266,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 6302,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 5213,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 5976,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 4005,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 2689,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 2316,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 1197,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 4349,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 3384,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 3931,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 6399,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 5318,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 1605,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 5628,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 2842,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 1831,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 5333,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 2801,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 1297,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 3887,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 2942,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 4569,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 6687,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 5106,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 3108,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 6473,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 5801,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 6943,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 3646,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 5015,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 3075,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 5855,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 3037,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 7035,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 5120,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 4095,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 3546,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 6679,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 4526,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 4795,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 6700,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 2667,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 2987,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 4494,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 3786,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 7222,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 3822,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 7008,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 3019,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 3346,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 4226,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 4150,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 1600,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 4867,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 5967,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 7163,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 328,
  [
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 6611,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 6727,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 4666,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 5592,
  [
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 2846,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 3647,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 4211,
  [
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 2857,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 5188,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 245,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 6763,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 3086,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 4309,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2699,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 4216,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 6753,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 5106,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 1145,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 1604,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 2661,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 5680,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 3033,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 4211,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 2560,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 3354,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 2898,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 4065,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 315,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 3996,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 5756,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 4922,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 3648,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 3547,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 3283,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 295,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 4346,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 362,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 2561,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 4657,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 2824,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 4711,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 1448,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 3492,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 7041,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 2985,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 3881,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 2611,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 2821,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 5036,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 4749,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 3606,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 4611,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 3610,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 3295,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 3218,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 3986,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 5758,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 4226,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 2887,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 5370,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 4495,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 6386,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 2854,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 2549,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 4728,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 6352,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 1601,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 4646,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 6230,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 893,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 5662,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 6580,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 4271,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 4052,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 2919,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 5427,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 2821,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 4216,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 5607,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 1048,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 1255,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 5042,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 6365,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 6202,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 3556,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 3096,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 2985,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 6748,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 6358,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 2534,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 1819,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 4461,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 6939,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 3021,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 6074,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 6688,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 5271,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 3111,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 3244,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 5415,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 6718,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 2974,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 749,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 4650,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 2096,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 6316,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 5628,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 3776,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 3874,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 4454,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 4427,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 5066,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 2479,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 1609,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 2732,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 3173,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 3118,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 2956,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2678,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 3610,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 4547,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 2023,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 2897,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 3771,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 5752,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2909,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 4059,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 4225,
  [
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 6104,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 3306,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 4673,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 2845,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 4876,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 1952,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 6714,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 6470,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 6302,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 753,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 3786,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 2888,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 6230,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 5230,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 2579,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 2839,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 624,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  ]: 2882,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 6679,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 4261,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 4427,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 5471,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 3586,
  [
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 6366,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 2470,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 6388,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 1809,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 1360,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 3465,
  [
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2626,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 3411,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 4270,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 5006,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 229,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 2206,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 2798,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 5810,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2689,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 6679,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 3997,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 3620,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 2493,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 2779,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 209,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 2721,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 4437,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 6806,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 6232,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 5142,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 4754,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 4327,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 2777,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 6231,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 6021,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  ]: 6827,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 5628,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 5529,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 2039,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 1458,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 4428,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 2294,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 626,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 3140,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 4052,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 6109,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 2650,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 1614,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 2813,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 5335,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart)
  ]: 3064,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 4762,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 4006,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 4020,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 5757,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 2512,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 4270,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 204,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 6372,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 5971,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 1715,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 6232,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  ]: 4429,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 3601,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 6204,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  ]: 3384,
  [
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 6022,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 238,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 4429,
  [
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 1830,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 6360,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 5160,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 246,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 6714,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 3328,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 3153,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 1609,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond)
  ]: 6736,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 3282,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 2075,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 2625,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 2688,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 4282,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 3293,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 605,
  [
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 4976,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 5107,
  [
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 1382,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 809,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 5582,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 3661,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 4043,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 2668,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 6699,
  [
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 4751,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 3175,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2468,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond)
  ]: 4938,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 6743,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 260,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 3426,
  [
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 4005,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 7009,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 6715,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 4426,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 6279,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 3988,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 3101,
  [
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 4206,
  [
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 2767,
  [
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 6273,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  ]: 4541,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 4867,
  [
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 4233,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 6763,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  ]: 2502,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 2549,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 4945,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 3604,
  [
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 5801,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 4667,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 4426,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  ]: 4718,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 6197,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  ]: 6742,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 4026,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 2037,
  [
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 6805,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 3346,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 5746,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  ]: 211,
  [
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  ]: 6203,
  [
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 6682,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 3428,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 4436,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 6749,
  [
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  ]: 2501,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 5325,
  [
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club)
  ]: 2766,
  [
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  ]: 2908,
  [
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  ]: 5186,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  ]: 2546,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  ]: 6301,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 3398,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 2603,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 2419,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade)
  ]: 1603,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 5627,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 5979,
  [
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 3228,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 7036,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 2603,
  [
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 7238,
  [
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  ]: 3216,
  [
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 5825,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 5889,
  [
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  ]: 7036,
  [
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 6280,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 6023,
  [
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 6269,
  [
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  ]: 7041,
  [
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  ]: 470,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  ]: 3293,
  [
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  ]: 2746,
  [
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  ]: 2184,
  [
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 6051,
  [
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade)
  ]: 2561,
  [
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  ]: 4095,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  ]: 6031,
  [
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  ]: 3647,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  ]: 5253,
  [
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  ]: 4321,
  [
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 274,
  [
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 2754,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  ]: 6199,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 5340,
  [
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  ]: 5526,
  [
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  ]: 3930,
  [
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  ]: 6268,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 4327,
  [
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club)
  ]: 3217,
  [
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club)
  ]: 5977,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  ]: 2579,
  [
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  ]: 2858,
  [
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 3172,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club)
  ]: 5931,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 6000,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  ]: 3121,
  [
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart)
  ]: 245,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  ]: 2963,
  [
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  ]: 6832,
  [
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  ]: 4563,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 4648,
  [
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond)
  ]: 3648,
  [
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  ]: 5004,
  [
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  ]: 2844,
  [
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  ]: 5611,
  [
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  ]: 5946,
};
