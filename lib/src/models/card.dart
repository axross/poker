import 'dart:math' as math;
import 'package:meta/meta.dart';
import './rank.dart';
import './suit.dart';

/// A piece of playing cards.
///
/// ```
/// final card = Card(Rank.ace, Suit.spade);
///
/// assert(card.rank == Rank.ace);
/// assert(card.suit == Suit.spade);
///
/// assert(card.toString() == "As");
/// ```
///
/// Since Card implements [Comparable], you can sort a list of Cards in order.
///
/// ```
/// const cards = [
///   Card(Rank.ace, Suit.spade),
///   Card(Rank.king, Suit.club),
///   Card(Rank.queen, Suit.heart),
///   Card(Rank.jack, Suit.diamond),
/// ];
///
/// cards.sort();
///
/// print(cards);  // [
///                //   Card(Rank.ace, Suit.spade),
///                //   Card(Rank.queen, Suit.heart),
///                //   Card(Rank.jack, Suit.diamond),
///                //   Card(Rank.king, Suit.club)
///                // ]
/// ```
abstract class Card {
  /// Creates a [Card] from Rank and Suit.
  ///
  /// ```dart
  /// final aceOfSpade = Card(rank: Rank.ace, suit: Suit.spade);
  /// final deuceOfHeart = Card(rank: Rank.deuce, suit: Suit.heart);
  /// final TreyOfDiamond = Card(rank: Rank.trey, suit: Suit.diamond);
  /// final kingOfClub = Card(rank: Rank.king, suit: Suit.club);
  /// ```
  const factory Card(Rank rank, Suit suit) = _RankSuitBasedCard;

  /// Creates a [Card] from a hash int value.
  @protected
  const factory Card.fromIndex(int index) = _IndexBasedCard;

  /// Creates a [Card] by a 2-character-length [String].
  ///
  /// ```dart
  /// Card.parse("As");  // => Card(Rank.ace, Suit.spade)
  /// Card.parse("2h");  // => Card(Rank.deuce, Suit.heart)
  /// Card.parse("3d");  // => Card(Rank.trey, Suit.diamond)
  /// Card.parse("Kc");  // => Card(Rank.king, Suit.club)
  /// ```
  factory Card.parse(String value) {
    if (!RegExp(r'^[A23456789TJQK][shdc]$').hasMatch(value)) {
      throw CardParseFailure(value);
    }

    return _RankSuitBasedCard(Rank.parse(value[0]), Suit.parse(value[1]));
  }

  /// Returns the hash integer value of this card.
  int get index;

  /// The [Rank] of this card.
  Rank get rank;

  /// The [Suit] of this card.
  Suit get suit;

  /// Returns a string representation. Ace of spade is `"As"`, 10 of heart is `"Th"` and deuce of diamond is `"2d"`.
  @override
  String toString();
}

@immutable
class _IndexBasedCard implements Card {
  const _IndexBasedCard(this.index);

  @override
  final int index;

  @override
  Rank get rank => Rank.fromIndex((math.log(index) / math.log(2)).floor() % 13);

  @override
  Suit get suit =>
      Suit.fromIndex(((math.log(index) / math.log(2)) / 13).floor());

  @override
  String toString() => '$rank$suit';

  @override
  int get hashCode => index;

  @override
  bool operator ==(Object other) => other is Card && other.index == index;
}

@immutable
class _RankSuitBasedCard implements Card {
  const _RankSuitBasedCard(this.rank, this.suit);

  @override
  int get index => math.pow(2, rank.index + suit.index * 13).toInt();

  @override
  final Rank rank;

  @override
  final Suit suit;

  @override
  String toString() => '$rank$suit';

  @override
  int get hashCode => index;

  @override
  bool operator ==(Object other) => other is Card && other.index == index;
}

@immutable

/// An exception that expresses `Card.parse()` failed due to the given String was invalid.
class CardParseFailure implements Exception {
  CardParseFailure(this.value);

  final String value;

  @override
  String toString() {
    return 'CardParseFailure: $value is not a valid string.';
  }
}
