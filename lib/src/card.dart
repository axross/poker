import "package:meta/meta.dart";
import "rank.dart";
import "suit.dart";

/// A piece of playing cards.
@immutable
class Card implements Comparable {
  /// Creates a card by its rank and suit.
  const Card({@required this.rank, @required this.suit})
      : assert(rank != null),
        assert(suit != null);

  /// Creates a card by a 2-character-length string (e.g. `"As"`, `"Th"` and `"2d"`).
  Card.fromString(String value)
      : assert(value.length == 2),
        rank = Rank.fromChar(value[0]),
        suit = Suit.fromChar(value[1]);

  /// The rank part of the objct.
  final Rank rank;

  /// The suit part of the objct.
  final Suit suit;

  /// Returns a string representation. Ace of spade is `"As"`, 10 of heart is `"Th"` and 2 of diamond is `"2d"`.
  @override
  String toString() => "${rank.char}${suit.char}";

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + rank.hashCode;
    result = 37 * result + suit.hashCode;

    return result;
  }

  /// Compares with other [Card]. Compares the [Rank] first and then the [Suit].
  @override
  int compareTo(other) {
    if (other is Card) {
      final rankComparison = rank.compareTo(other.rank);

      if (rankComparison == 0) {
        return suit.compareTo(other.suit);
      }

      return rankComparison;
    }

    return -1;
  }

  @override
  bool operator ==(dynamic other) =>
      other is Card && other.rank == rank && other.suit == suit;
}
