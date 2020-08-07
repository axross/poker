import "package:poker/poker.dart";
import "package:poker/src/hand.dart";
import "package:test/test.dart";

void main() {
  test(
      "Hand.bestFrom() creates a hand that is made of the best combination from the given cards",
      () {
    for (final entry in _handAndIds.entries) {
      final hand = Hand.bestFrom(entry.key);

      expect(hand.strongness, equals(entry.value));
    }
  });
}

final _handAndIds = {
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 1881,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 1612,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 4285,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 2568,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 4289,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 6958,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 3998,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 1147,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 3237,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 5285,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 4620,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  }: 4199,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 3888,
  {
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 2758,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club)
  }: 1042,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 2593,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 7218,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 4627,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 5851,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 4693,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 2126,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 350,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 7144,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 1267,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 782,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 979,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 735,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 577,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 550,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 426,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 4169,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 2789,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 2319,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3628,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 2866,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  }: 543,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 4629,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 1496,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 1167,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 726,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 4658,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 5112,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 3848,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 2052,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 2056,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 3778,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 1358,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 2366,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  }: 1913,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 7276,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 3906,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 1091,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 1697,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 3851,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 4263,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 1332,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 171,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 3246,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 4598,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 4950,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 2596,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 4616,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 984,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 5857,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 3693,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 1614,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 2955,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 2047,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 1697,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 4116,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4352,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 3596,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 963,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 1112,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 1259,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 5862,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 2290,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 3456,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 4617,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 4890,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  }: 3617,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 3421,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 4683,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 3419,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 1909,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 1073,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 1378,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 2522,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 2961,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 2071,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3148,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  }: 4608,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 4894,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 4123,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 1705,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 4274,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 713,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 1924,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 4614,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 1110,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 4311,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 4631,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 4400,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 3009,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 1716,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 4642,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 4036,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 4169,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 776,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 4101,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 4604,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  }: 1276,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 3595,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 7281,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 2020,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 116,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 1189,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 5576,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 4201,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 2816,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 3852,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club)
  }: 5855,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 1637,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 574,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 4400,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 4614,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 5859,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 4526,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club)
  }: 882,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 1600,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 3102,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 4352,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 4739,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4789,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 2191,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 7047,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  }: 3475,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 4607,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 225,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 1042,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 7261,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  }: 709,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 5859,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 4036,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 1147,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 4883,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 1026,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 2259,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 2921,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 2357,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 4570,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 3235,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 3611,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 4378,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 1103,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 3676,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 4682,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 718,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  }: 5856,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  }: 6073,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 365,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 4904,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 4190,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 5854,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 5126,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 4630,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 1836,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 3889,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 4142,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 5837,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 4364,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 1934,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 1041,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 4499,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 4937,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 2850,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 4517,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 763,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 3746,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 4850,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 2786,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 4411,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 5698,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 2302,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 1917,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 3641,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 2376,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 699,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 4419,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 1440,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club)
  }: 6177,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 2928,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 7264,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club)
  }: 2375,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 2362,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 3696,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3229,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 1496,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 2576,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 1567,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 3669,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 1104,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 1183,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 739,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 2240,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 3245,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 1766,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 1917,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 4064,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 453,
  {
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 4746,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 3966,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 453,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 4976,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 209,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 5857,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 7375,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 6004,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 3300,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 2593,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 1360,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 2979,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 2364,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 3622,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 3211,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club)
  }: 5048,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  }: 2020,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 2090,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 1379,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 7033,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  }: 5858,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  }: 4488,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 1147,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 3135,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 837,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 2275,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 740,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4838,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 4156,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 2488,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  }: 4422,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 3639,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 4378,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 4433,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 3255,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 1103,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 4552,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 3466,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 2972,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 4422,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 7221,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 4835,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 4828,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 3596,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 1431,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 3007,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 4807,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  }: 3886,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 3640,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 6520,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 1440,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club)
  }: 4069,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 3447,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3192,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 2095,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 4344,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 3585,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 4136,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 4553,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 6652,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 2268,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 2495,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 3630,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 3538,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 4155,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 1268,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 3246,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 663,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 5566,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 1193,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 2066,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 782,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 5654,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 4177,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 1247,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club)
  }: 4112,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 2372,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 6129,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 401,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 7287,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 5859,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 1224,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 2981,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 2375,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 2517,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 963,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 4658,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4207,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 3795,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 2814,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 4641,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 2805,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  }: 2781,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 4686,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 3025,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 7164,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 5859,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club)
  }: 5853,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 5859,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 2268,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 4934,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 2374,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 4433,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 4265,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 1871,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 5046,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  }: 1650,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 4790,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 1661,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 693,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 2524,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 2590,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 5857,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 553,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 4471,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 243,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 4828,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 1706,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 953,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 4783,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 2260,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 2152,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 2054,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 2275,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 4400,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 908,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 442,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 748,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 4212,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  }: 4443,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 3586,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 1386,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 3668,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 7197,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 1103,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 1275,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 1331,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 3464,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 4157,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 2523,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 1273,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 554,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 990,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 2336,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 7330,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 3184,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 1275,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  }: 1047,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 3012,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 2584,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club)
  }: 1268,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 1496,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 1615,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 1341,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 1580,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 4958,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 406,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 2084,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 1441,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 957,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 2809,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 2363,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 741,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 4752,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 1196,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 1387,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 1161,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 4833,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 3887,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 4882,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 3001,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 3453,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 2374,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 3616,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 3236,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club)
  }: 4213,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 2586,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 4331,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 3177,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 4388,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 4916,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 1075,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 1223,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 1614,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 4136,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 447,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 1141,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 4609,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 2804,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 5837,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 2431,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 245,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 4386,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 4257,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 3182,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 5934,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3085,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 4642,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 3780,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 6361,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 4760,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 1195,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 1267,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 3686,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  }: 3081,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 4708,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 2981,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 4213,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 2586,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 3251,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 2815,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 4704,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 1048,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 5855,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 1697,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 216,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 3152,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 3442,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 1697,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 5862,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 4858,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 4738,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 4375,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 4521,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 664,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 3813,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 2935,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 1232,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 7236,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 3530,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 1216,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 4213,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 2145,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 4605,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 420,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 4598,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 2523,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 4156,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 3851,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 3403,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 1661,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 4871,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 2033,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 3831,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  }: 4462,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 3902,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 440,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 5623,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 453,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 2899,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4817,
  {
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 4835,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3036,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 1231,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 1799,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 2707,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 1496,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 4801,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 4243,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  }: 580,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 3857,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 1851,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 4125,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 4000,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 3154,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  }: 4459,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 3816,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  }: 3741,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 5773,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 1162,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 2410,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 2129,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 3903,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 2321,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4751,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 4829,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 1268,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 4575,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 4109,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 4862,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 3017,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  }: 5189,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 3971,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  }: 558,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 4000,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 4124,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 4250,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 6322,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 5453,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  }: 341,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 442,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 3139,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 3560,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 663,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 7276,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 3135,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 6107,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 2804,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 5622,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 3691,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  }: 5654,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 3456,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 5987,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  }: 4178,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 1880,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 5255,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 4529,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 4615,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 4961,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 3587,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 7267,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 3374,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 2144,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club)
  }: 4448,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  }: 2761,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 3360,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 1660,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 3596,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 2892,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 1615,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 5857,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 3322,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 2048,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 2574,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 2695,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 2972,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 7109,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 1211,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 4618,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 4134,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 4472,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 3695,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 454,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  }: 4762,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 2311,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 3305,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 1026,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 3255,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 4080,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 3476,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 4477,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 3112,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 748,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 1615,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 2575,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 2915,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 2726,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 4802,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4168,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 1112,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 1651,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4108,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 4027,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 4444,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 5324,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 5351,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 1112,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 6678,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 2774,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 5860,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 3831,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 5854,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 3466,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 1934,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 1711,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 3465,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  }: 4433,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  }: 4158,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 4703,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 7168,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  }: 2970,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  }: 2757,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 4716,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 2375,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 3120,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 2020,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 2978,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 4817,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club)
  }: 3442,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 908,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 1926,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 2812,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 2137,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4651,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 979,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 3779,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 2239,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 1196,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 1160,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 2249,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 1486,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 3457,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 4773,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  }: 5146,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 6265,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 3113,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 4078,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 3531,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 1063,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 2144,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 5857,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 1834,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 4620,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  }: 5631,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 2129,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 4661,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 6165,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 3575,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 4520,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 2893,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  }: 775,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 2356,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 4354,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club)
  }: 989,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 1661,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 519,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 3816,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 2447,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 4387,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 1607,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 4425,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 427,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 2342,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 3367,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 3916,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 783,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 2936,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club)
  }: 2667,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 762,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 4795,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 4475,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 2968,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 3676,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 240,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 3640,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 454,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 4443,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4116,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 3236,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 3312,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 5862,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 2595,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 1495,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  }: 299,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 7134,
  {
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 851,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 735,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 2796,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 1870,
  {
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 4616,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  }: 3815,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 3251,
  {
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 4605,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 2274,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 7217,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 699,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4376,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 3153,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4763,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 3246,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club)
  }: 709,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 2356,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 6317,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 5858,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 4801,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 1782,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 4429,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 3251,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 4902,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 4108,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 4564,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 3397,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 7147,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 3466,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 1706,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 2540,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 3814,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 3915,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4179,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 7167,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 3116,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 7100,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4901,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 2805,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 4638,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 2751,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 6014,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 3970,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 421,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 4477,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 3581,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 4851,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 4641,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  }: 2426,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 2713,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 3856,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 2851,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 3852,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 4167,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 4244,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 3476,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 1704,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 3236,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 4575,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 2092,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club)
  }: 2967,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 1076,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 4608,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 4913,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 2734,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 1110,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 5861,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 2816,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 1232,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 6569,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 1800,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club)
  }: 882,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 3191,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 3410,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 4543,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 2035,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4641,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 3246,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 1855,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 6414,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 6207,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club)
  }: 2420,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 1097,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 1260,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 3906,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 4366,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 4477,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 714,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 1104,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 4928,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 5643,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 3001,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 523,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 4441,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 1388,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 774,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 2191,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 4351,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 4218,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 2047,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 744,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 4488,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 6713,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 2812,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 5366,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 1146,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 1834,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 3686,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 3588,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 3008,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 3035,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 2396,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 4983,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 5853,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 4730,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 4289,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 4344,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 4506,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4784,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3852,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 2915,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 5439,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 4565,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 3691,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 1710,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4553,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 3403,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 3237,
  {
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 1358,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 4156,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 2789,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  }: 4617,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 2586,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 5510,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 748,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 992,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 1160,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 6709,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 3676,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 4574,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 1232,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 2232,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 4883,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 4623,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 6838,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club)
  }: 4580,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 783,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 3201,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 3035,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 1991,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  }: 3876,
  {
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 1096,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 4992,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 1074,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 5653,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 6102,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  }: 3997,
  {
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4836,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 4051,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 3192,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 2456,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 7233,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 5256,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club)
  }: 4664,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 1652,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4773,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 783,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 3465,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 3842,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 4969,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 4683,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 7253,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 4741,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3025,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 656,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 1230,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 2320,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 2708,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3135,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 4685,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 1231,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 1441,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond)
  }: 635,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 1834,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club)
  }: 1933,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 5423,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 6004,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 3034,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 5168,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 6836,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 4322,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 3410,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 1353,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 4812,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 5848,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 4649,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 2127,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart)
  }: 4398,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 2700,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 3456,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 3442,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 1705,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 4950,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club)
  }: 3192,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 7258,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 1090,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 1491,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 5747,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 1230,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond)
  }: 3033,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  }: 3861,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club)
  }: 1258,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club)
  }: 4078,
  {
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 1440,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 7224,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 3033,
  {
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 5632,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 1102,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 2302,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 7216,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 748,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 4134,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 4309,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 5853,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond)
  }: 726,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 4180,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 5387,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 4837,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 4774,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 3180,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  }: 4169,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 6857,
  {
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 2486,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 2355,
  {
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 6080,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 6653,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 1880,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 3801,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 3419,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 4794,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 763,
  {
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 2711,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 4287,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4994,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond)
  }: 2524,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 719,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 7202,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 4036,
  {
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 3457,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 453,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 747,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 3036,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  }: 1183,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 3474,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 4361,
  {
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 3256,
  {
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 4695,
  {
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 1189,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart)
  }: 2921,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 2595,
  {
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 3229,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club)
  }: 699,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade)
  }: 4960,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 4913,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 2517,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 3858,
  {
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 1661,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 2795,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 3036,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond)
  }: 2744,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 1265,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade)
  }: 720,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 3436,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 5425,
  {
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 657,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 4116,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club)
  }: 1716,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.spade)
  }: 7251,
  {
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond)
  }: 1259,
  {
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club)
  }: 780,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 4034,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 3026,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 713,
  {
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart)
  }: 4961,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 2137,
  {
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club)
  }: 4696,
  {
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond)
  }: 4554,
  {
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond)
  }: 2276,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club)
  }: 4916,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club)
  }: 1161,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 4064,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club)
  }: 4859,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.club)
  }: 5043,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade)
  }: 5859,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 1835,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 1483,
  {
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.club)
  }: 4234,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 426,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 4859,
  {
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 224,
  {
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart)
  }: 4246,
  {
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 1637,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 1573,
  {
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart)
  }: 426,
  {
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 1182,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 1439,
  {
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 1193,
  {
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.diamond)
  }: 421,
  {
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart)
  }: 6992,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade)
  }: 4169,
  {
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond)
  }: 4716,
  {
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart)
  }: 5278,
  {
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 1411,
  {
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.spade)
  }: 4901,
  {
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.spade)
  }: 3367,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade)
  }: 1431,
  {
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.diamond)
  }: 3815,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.spade)
  }: 2209,
  {
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart)
  }: 3141,
  {
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 7188,
  {
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 4708,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.heart)
  }: 1263,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  }: 2122,
  {
    Card(rank: Rank.king, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.queen, suit: Suit.spade)
  }: 1936,
  {
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.heart)
  }: 3532,
  {
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.king, suit: Suit.heart)
  }: 1194,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club)
  }: 3135,
  {
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.club)
  }: 4245,
  {
    Card(rank: Rank.nine, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.club)
  }: 1485,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.club)
  }: 4883,
  {
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart)
  }: 4604,
  {
    Card(rank: Rank.three, suit: Suit.spade),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.five, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 4290,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club)
  }: 1531,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 1462,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.spade),
    Card(rank: Rank.deuce, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.five, suit: Suit.club),
    Card(rank: Rank.eight, suit: Suit.spade)
  }: 4341,
  {
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.heart),
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.diamond),
    Card(rank: Rank.queen, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.heart)
  }: 7217,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.club),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.ten, suit: Suit.diamond),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.six, suit: Suit.diamond)
  }: 4499,
  {
    Card(rank: Rank.three, suit: Suit.heart),
    Card(rank: Rank.nine, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.four, suit: Suit.heart),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.club)
  }: 630,
  {
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.heart),
    Card(rank: Rank.four, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.ten, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.club),
    Card(rank: Rank.nine, suit: Suit.spade)
  }: 2899,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.spade),
    Card(rank: Rank.ace, suit: Suit.heart),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 2814,
  {
    Card(rank: Rank.ten, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.spade),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.king, suit: Suit.heart),
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.diamond)
  }: 3814,
  {
    Card(rank: Rank.ten, suit: Suit.spade),
    Card(rank: Rank.six, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.spade),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.club)
  }: 2458,
  {
    Card(rank: Rank.eight, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.jack, suit: Suit.diamond),
    Card(rank: Rank.jack, suit: Suit.heart),
    Card(rank: Rank.queen, suit: Suit.diamond),
    Card(rank: Rank.nine, suit: Suit.spade),
    Card(rank: Rank.nine, suit: Suit.club)
  }: 4618,
  {
    Card(rank: Rank.king, suit: Suit.spade),
    Card(rank: Rank.four, suit: Suit.club),
    Card(rank: Rank.seven, suit: Suit.diamond),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.four, suit: Suit.spade),
    Card(rank: Rank.eight, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.spade)
  }: 1851,
  {
    Card(rank: Rank.three, suit: Suit.diamond),
    Card(rank: Rank.seven, suit: Suit.club),
    Card(rank: Rank.five, suit: Suit.diamond),
    Card(rank: Rank.six, suit: Suit.club),
    Card(rank: Rank.three, suit: Suit.club),
    Card(rank: Rank.deuce, suit: Suit.diamond),
    Card(rank: Rank.eight, suit: Suit.club)
  }: 1516,
};
