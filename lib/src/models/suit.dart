import 'package:meta/meta.dart';

/// An enum-like class that expresses a suit of [Card].
@immutable
class Suit {
  static const Suit spade = Suit._(0);
  static const Suit heart = Suit._(1);
  static const Suit diamond = Suit._(2);
  static const Suit club = Suit._(3);

  const Suit._(this.index);

  /// Returns a [Suit] from an integer value. The value must be 0 <= value <= 3.
  factory Suit.fromIndex(int index) {
    assert(index >= 0 && index <= 3);

    switch (index) {
      case 0:
        return Suit.spade;
      case 1:
        return Suit.heart;
      case 2:
        return Suit.diamond;
      default:
        return Suit.club;
    }
  }

  /// Parses a char (1-charactor-length string) and returns a [Suit]. The value must be one of `"s"`, `"h"`, `"d"` or `"c"`.
  ///
  /// ```dart
  /// assert(Suit.parse("s") == Suit.spade);
  /// assert(Suit.parse("c") == Suit.club);
  /// ```
  ///
  /// If any string else is given, this throws a [SuitParseFailureException].
  ///
  /// ```dart
  /// Suit.parse("sc");  // throws SuitParseFailureException
  /// Suit.parse("S");   // throws SuitParseFailureException
  /// ```
  factory Suit.parse(String value) {
    switch (value) {
      case "s":
        return Suit.spade;
      case "h":
        return Suit.heart;
      case "d":
        return Suit.diamond;
      case "c":
        return Suit.club;
      default:
        throw SuitParseFailureException(value: value);
    }
  }

  /// Returns int expression of the suit.
  final int index;

  /// Returns 1-char length string.
  ///
  /// ```dart
  /// assert(Suit.heart.toString(), "h");
  /// assert(Suit.diamond.toString(), "d");
  /// ```
  @override
  String toString() {
    switch (this) {
      case Suit.spade:
        return "s";
      case Suit.heart:
        return "h";
      case Suit.diamond:
        return "d";
      default:
        return "c";
    }
  }
}

class SuitParseFailureException implements Exception {
  SuitParseFailureException({required this.value});

  final String value;

  String get message => "$value is not a valid string as a rank.";
}
