import 'package:meta/meta.dart';

/// An enum-like class that expresses a rank of [Card].
@immutable
class Rank {
  static const Rank ace = Rank._(0);
  static const Rank deuce = Rank._(1);
  static const Rank trey = Rank._(2);
  static const Rank four = Rank._(3);
  static const Rank five = Rank._(4);
  static const Rank six = Rank._(5);
  static const Rank seven = Rank._(6);
  static const Rank eight = Rank._(7);
  static const Rank nine = Rank._(8);
  static const Rank ten = Rank._(9);
  static const Rank jack = Rank._(10);
  static const Rank queen = Rank._(11);
  static const Rank king = Rank._(12);

  const Rank._(this.index);

  /// Returns a [Suit] from an integer value. The value must be 0 <= value <= 12.
  factory Rank.fromIndex(int index) {
    assert(index >= 0 && index <= 12);

    switch (index) {
      case 0:
        return Rank.ace;
      case 1:
        return Rank.deuce;
      case 2:
        return Rank.trey;
      case 3:
        return Rank.four;
      case 4:
        return Rank.five;
      case 5:
        return Rank.six;
      case 6:
        return Rank.seven;
      case 7:
        return Rank.eight;
      case 8:
        return Rank.nine;
      case 9:
        return Rank.ten;
      case 10:
        return Rank.jack;
      case 11:
        return Rank.queen;
      default:
        return Rank.king;
    }
  }

  /// Parses a char (1-charactor-length string) and returns a [Rank]. The value must be one of `"A"`, `"2"`, `"3"`, `"4"`, `"5"`, `"6"`, `"7"`, `"8"`, `"9"`, `"T"`, `"J"`, `"Q"` or `"K"`.
  ///
  /// ```dart
  /// assert(Rank.parse("A") == Rank.ace);
  /// assert(Rank.parse("8") == Rank.eight);
  /// ```
  ///
  /// If any string else is given, this throws a [RankParseFailureException].
  ///
  /// ```dart
  /// Rank.parse("a");      // throws RankParseFailureException
  /// Rank.parse("eight");  // throws RankParseFailureException
  /// ```
  factory Rank.parse(String value) {
    switch (value) {
      case 'A':
        return Rank.ace;
      case '2':
        return Rank.deuce;
      case '3':
        return Rank.trey;
      case '4':
        return Rank.four;
      case '5':
        return Rank.five;
      case '6':
        return Rank.six;
      case '7':
        return Rank.seven;
      case '8':
        return Rank.eight;
      case '9':
        return Rank.nine;
      case 'T':
        return Rank.ten;
      case 'J':
        return Rank.jack;
      case 'Q':
        return Rank.queen;
      case 'K':
        return Rank.king;
      default:
        throw RankParseFailureException(value);
    }
  }

  /// Returns int expression of the rank.
  final int index;

  int get powerIndex => this == Rank.ace ? 0 : 13 - index;

  /// Returns 1-char length string represents the rank.
  @override
  String toString() {
    switch (this) {
      case Rank.ace:
        return 'A';
      case Rank.deuce:
        return '2';
      case Rank.trey:
        return '3';
      case Rank.four:
        return '4';
      case Rank.five:
        return '5';
      case Rank.six:
        return '6';
      case Rank.seven:
        return '7';
      case Rank.eight:
        return '8';
      case Rank.nine:
        return '9';
      case Rank.ten:
        return 'T';
      case Rank.jack:
        return 'J';
      case Rank.queen:
        return 'Q';
      default:
        return 'K';
    }
  }
}

class RankParseFailureException implements Exception {
  RankParseFailureException(this.value);

  final String value;

  String get message => '$value is not a valid string as a rank.';
}
