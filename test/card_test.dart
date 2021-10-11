import "package:poker/poker.dart";
import "package:test/test.dart";

void main() {
  group("Card.fromString()", () {
    test("Card.fromString(\"As\") returns a Card<As>", () {
      expect(
        Card.fromString("As"),
        equals(Card(Rank.ace, Suit.spade)),
      );
    });

    test("Card.fromString(\"2s\") returns a Card<2s>", () {
      expect(
        Card.fromString("2s"),
        equals(Card(Rank.deuce, Suit.spade)),
      );
    });

    test("Card.fromString(\"Ks\") returns a Card<Ks>", () {
      expect(
        Card.fromString("Ks"),
        equals(Card(Rank.king, Suit.spade)),
      );
    });

    test("Card.fromString(\"Ah\") returns a Card<Ah>", () {
      expect(
        Card.fromString("Ah"),
        equals(Card(Rank.ace, Suit.heart)),
      );
    });

    test("Card.fromString(\"2h\") returns a Card<2h>", () {
      expect(
        Card.fromString("2h"),
        equals(Card(Rank.deuce, Suit.heart)),
      );
    });

    test("Card.fromString(\"Kh\") returns a Card<Kh>", () {
      expect(
        Card.fromString("Kh"),
        equals(Card(Rank.king, Suit.heart)),
      );
    });

    test("Card.fromString(\"Ad\") returns a Card<Ad>", () {
      expect(
        Card.fromString("Ad"),
        equals(Card(Rank.ace, Suit.diamond)),
      );
    });

    test("Card.fromString(\"2d\") returns a Card<2d>", () {
      expect(
        Card.fromString("2d"),
        equals(Card(Rank.deuce, Suit.diamond)),
      );
    });

    test("Card.fromString(\"Kd\") returns a Card<Kd>", () {
      expect(
        Card.fromString("Kd"),
        equals(Card(Rank.king, Suit.diamond)),
      );
    });

    test("Card.fromString(\"Ac\") returns a Card<Ac>", () {
      expect(
        Card.fromString("Ac"),
        equals(Card(Rank.ace, Suit.club)),
      );
    });

    test("Card.fromString(\"2c\") returns a Card<2c>", () {
      expect(
        Card.fromString("2c"),
        equals(Card(Rank.deuce, Suit.club)),
      );
    });

    test("Card.fromString(\"Qc\") returns a Card<Qc>", () {
      expect(
        Card.fromString("Qc"),
        equals(Card(Rank.queen, Suit.club)),
      );
    });

    test("Card.fromString(\"Kc\") returns a Card<Kc>", () {
      expect(
        Card.fromString("Kc"),
        equals(Card(Rank.king, Suit.club)),
      );
    });

    test("Card.fromString(\"AS\") throws a CardParseFailure", () {
      expect(
        () => Card.fromString("AS"),
        throwsA(isA<CardParseFailure>()),
      );
    });

    test("Card.fromString(\"as\") throws a CardParseFailure", () {
      expect(
        () => Card.fromString("as"),
        throwsA(isA<CardParseFailure>()),
      );
    });

    test("Card.fromString(\"Sa\") throws a CardParseFailure", () {
      expect(
        () => Card.fromString("Sa"),
        throwsA(isA<CardParseFailure>()),
      );
    });

    test("Card.fromString(\"AK\") throws a CardParseFailure", () {
      expect(
        () => Card.fromString("AK"),
        throwsA(isA<CardParseFailure>()),
      );
    });

    test("Card.fromString(\"\") throws a CardParseFailure", () {
      expect(
        () => Card.fromString(""),
        throwsA(isA<CardParseFailure>()),
      );
    });
  });

  group("Card#toString()", () {
    test("Card<As>.toString() returns \"As\"", () {
      expect(
        Card(Rank.ace, Suit.spade).toString(),
        equals("As"),
      );
    });

    test("Card<2s>.toString() returns \"2s\"", () {
      expect(
        Card(Rank.deuce, Suit.spade).toString(),
        equals("2s"),
      );
    });

    test("Card<Ks>.toString() returns \"Ks\"", () {
      expect(
        Card(Rank.king, Suit.spade).toString(),
        equals("Ks"),
      );
    });

    test("Card<Ah>.toString() returns \"Ah\"", () {
      expect(
        Card(Rank.ace, Suit.heart).toString(),
        equals("Ah"),
      );
    });

    test("Card<2h>.toString() returns \"2h\"", () {
      expect(
        Card(Rank.deuce, Suit.heart).toString(),
        equals("2h"),
      );
    });

    test("Card<Kh>.toString() returns \"Kh\"", () {
      expect(
        Card(Rank.king, Suit.heart).toString(),
        equals("Kh"),
      );
    });

    test("Card<Ad>.toString() returns \"Ad\"", () {
      expect(
        Card(Rank.ace, Suit.diamond).toString(),
        equals("Ad"),
      );
    });

    test("Card<2d>.toString() returns \"2d\"", () {
      expect(
        Card(Rank.deuce, Suit.diamond).toString(),
        equals("2d"),
      );
    });

    test("Card<Kd>.toString() returns \"Kd\"", () {
      expect(
        Card(Rank.king, Suit.diamond).toString(),
        equals("Kd"),
      );
    });

    test("Card<Ac>.toString() returns \"Ac\"", () {
      expect(
        Card(Rank.ace, Suit.club).toString(),
        equals("Ac"),
      );
    });

    test("Card<2c>.toString() returns \"2c\"", () {
      expect(
        Card(Rank.deuce, Suit.club).toString(),
        equals("2c"),
      );
    });

    test("Card<Qc>.toString() returns \"Qc\"", () {
      expect(
        Card(Rank.queen, Suit.club).toString(),
        equals("Qc"),
      );
    });

    test("Card<Kc>.toString() returns \"Kc\"", () {
      expect(
        Card(Rank.king, Suit.club).toString(),
        equals("Kc"),
      );
    });
  });

  group("Card#rank", () {
    test("Card<As>.rank is Rank.Ace", () {
      expect(
        Card(Rank.ace, Suit.spade).rank,
        equals(Rank.ace),
      );
    });

    test("Card<2s>.rank is Rank.deuce", () {
      expect(
        Card(Rank.deuce, Suit.spade).rank,
        equals(Rank.deuce),
      );
    });

    test("Card<Ks>.rank is Rank.king", () {
      expect(
        Card(Rank.king, Suit.spade).rank,
        equals(Rank.king),
      );
    });

    test("Card<Ah>.rank is Rank.ace", () {
      expect(
        Card(Rank.ace, Suit.heart).rank,
        equals(Rank.ace),
      );
    });

    test("Card<2h>.rank is Rank.deuce", () {
      expect(
        Card(Rank.deuce, Suit.heart).rank,
        equals(Rank.deuce),
      );
    });

    test("Card<Kh>.rank is Rank.king", () {
      expect(
        Card(Rank.king, Suit.heart).rank,
        equals(Rank.king),
      );
    });

    test("Card<Ad>.rank is Rank.ace", () {
      expect(
        Card(Rank.ace, Suit.diamond).rank,
        equals(Rank.ace),
      );
    });

    test("Card<2d>.rank is Rank.deuce", () {
      expect(
        Card(Rank.deuce, Suit.diamond).rank,
        equals(Rank.deuce),
      );
    });

    test("Card<Kd>.rank is Rank.king", () {
      expect(
        Card(Rank.king, Suit.diamond).rank,
        equals(Rank.king),
      );
    });

    test("Card<Ac>.rank is Rank.ace", () {
      expect(
        Card(Rank.ace, Suit.club).rank,
        equals(Rank.ace),
      );
    });

    test("Card<2c>.rank is Rank.deuce", () {
      expect(
        Card(Rank.deuce, Suit.club).rank,
        equals(Rank.deuce),
      );
    });

    test("Card<Qc>.rank is Rank.queen", () {
      expect(
        Card(Rank.queen, Suit.club).rank,
        equals(Rank.queen),
      );
    });

    test("Card<Kc>.rank is Rank.king", () {
      expect(
        Card(Rank.king, Suit.club).rank,
        equals(Rank.king),
      );
    });
  });

  group("Card#suit", () {
    test("Card<As>.suit is Suit.spade", () {
      expect(
        Card(Rank.ace, Suit.spade).suit,
        equals(Suit.spade),
      );
    });

    test("Card<2s>.suit is Suit.spade", () {
      expect(
        Card(Rank.deuce, Suit.spade).suit,
        equals(Suit.spade),
      );
    });

    test("Card<Ks>.suit is Suit.spade", () {
      expect(
        Card(Rank.king, Suit.spade).suit,
        equals(Suit.spade),
      );
    });

    test("Card<Ah>.suit is Suit.heart", () {
      expect(
        Card(Rank.ace, Suit.heart).suit,
        equals(Suit.heart),
      );
    });

    test("Card<2h>.suit is Suit.heart", () {
      expect(
        Card(Rank.deuce, Suit.heart).suit,
        equals(Suit.heart),
      );
    });

    test("Card<Kh>.suit is Suit.heart", () {
      expect(
        Card(Rank.king, Suit.heart).suit,
        equals(Suit.heart),
      );
    });

    test("Card<2d>.suit is Suit.diamond", () {
      expect(
        Card(Rank.ace, Suit.diamond).suit,
        equals(Suit.diamond),
      );
    });

    test("Card<2d>.suit is Suit.diamond", () {
      expect(
        Card(Rank.deuce, Suit.diamond).suit,
        equals(Suit.diamond),
      );
    });

    test("Card<Kd>.suit is Suit.diamond", () {
      expect(
        Card(Rank.king, Suit.diamond).suit,
        equals(Suit.diamond),
      );
    });

    test("Card<Ac>.suit is Suit.club", () {
      expect(
        Card(Rank.ace, Suit.club).suit,
        equals(Suit.club),
      );
    });

    test("Card<2c>.suit is Suit.club", () {
      expect(
        Card(Rank.deuce, Suit.club).suit,
        equals(Suit.club),
      );
    });

    test("Card<Qc>.suit is Suit.club", () {
      expect(
        Card(Rank.queen, Suit.club).suit,
        equals(Suit.club),
      );
    });

    test("Card<Kc>.suit is Suit.club", () {
      expect(
        Card(Rank.king, Suit.club).suit,
        equals(Suit.club),
      );
    });
  });
}
