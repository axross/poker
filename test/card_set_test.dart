import "package:poker/poker.dart";
import "package:test/test.dart";

void main() {
  // test("CardSet.empty has a 52-bit hash int value that its every bit is 0", () {
  //   expect(
  //       CardSet.empty.toInt(),
  //       equals(int.parse(
  //         "0000000000000000000000000000000000000000000000000000",
  //         radix: 2,
  //       )));
  // });

  // test("CardSet.full has a 52-bit hash int value that its every bit is 1", () {
  //   expect(
  //       CardSet.full.toInt(),
  //       equals(int.parse(
  //         "1111111111111111111111111111111111111111111111111111",
  //         radix: 2,
  //       )));
  // });

  group("CardSet.fromString()", () {
    test(
        "CardSet.fromString(\"AsKcQhJd\") returns a CardSet<{ As, Qh, Jd, Kh }>",
        () {
      expect(
        CardSet.fromString("AsKcQhJd"),
        equals(CardSet({
          Card(Rank.ace, Suit.spade),
          Card(Rank.queen, Suit.heart),
          Card(Rank.jack, Suit.diamond),
          Card(Rank.king, Suit.club),
        })),
      );
    });

    test("CardSet.fromString(\"\") returns an empty CardSet", () {
      expect(
        CardSet.fromString(""),
        equals(CardSet.empty),
      );
    });

    test("CardSet.fromString(\"AsKC\") throws a CardSetParseFailure", () {
      expect(
        () => CardSet.fromString("AsKC"),
        throwsA(isA<CardSetParseFailure>()),
      );
    });

    test("CardSet.fromString(\"AsKcqh\") throws a CardSetParseFailure", () {
      expect(
        () => CardSet.fromString("AsKcqh"),
        throwsA(isA<CardSetParseFailure>()),
      );
    });

    test("CardSet.fromString(\"AKs\") throws a CardSetParseFailure", () {
      expect(
        () => CardSet.fromString("AKs"),
        throwsA(isA<CardSetParseFailure>()),
      );
    });

    test("CardSet.fromString(\"44\") throws a CardSetParseFailure", () {
      expect(
        () => CardSet.fromString("44"),
        throwsA(isA<CardSetParseFailure>()),
      );
    });

    test("CardSet.fromString(\"As+\") throws a CardSetParseFailure", () {
      expect(
        () => CardSet.fromString("As+"),
        throwsA(isA<CardSetParseFailure>()),
      );
    });
  });

  group("CardSet#length", () {
    test("CardSet<{ As, Qh, Jd, Kc }>.length returns 4", () {
      expect(
        CardSet({
          Card(Rank.ace, Suit.spade),
          Card(Rank.queen, Suit.heart),
          Card(Rank.jack, Suit.diamond),
          Card(Rank.king, Suit.club),
        }).length,
        equals(4),
      );
    });

    test("CardSet<{ As }>.length returns 1", () {
      expect(
        CardSet({Card(Rank.ace, Suit.spade)}).length,
        equals(1),
      );
    });

    test("CardSet.empty.length returns 0", () {
      expect(CardSet.empty.length, equals(0));
    });

    test("CardSet.full.length returns 52", () {
      expect(CardSet.full.length, equals(52));
    });
  });

  group("CardSet#contains()", () {
    test("CardSet<AsQhJdKh>.contains(Card<Jd>) returns true", () {
      expect(
        CardSet({
          Card(Rank.ace, Suit.spade),
          Card(Rank.queen, Suit.heart),
          Card(Rank.jack, Suit.diamond),
          Card(Rank.king, Suit.club),
        }).contains(Card(Rank.jack, Suit.diamond)),
        isTrue,
      );
    });

    // test("CardSet<2c>.contains(CardSet.empty) returns true", () {
    //   expect(
    //     CardSet({Card(Rank.deuce, Suit.club)}).contains(CardSet.empty),
    //     isTrue,
    //   );
    // });

    test("CardSet.empty.contains(CardSet<2c>) returns false", () {
      expect(CardSet.empty.contains(Card(Rank.deuce, Suit.club)), isFalse);
    });

    // test("CardSet.empty.contains(CardSet.empty) returns true", () {
    //   expect(CardSet.empty.contains(CardSet.empty), isTrue);
    // });

    // test("CardSet.full.contains(CardSet.full) returns true", () {
    //   expect(CardSet.full.contains(CardSet.full), isTrue);
    // });
  });

  group("CardSet#add()", () {
    test("CardSet<AsJd>.add(Qh) makes it CardSet<AsQhJd>", () {
      expect(
        CardSet({
          Card(Rank.ace, Suit.spade),
          Card(Rank.jack, Suit.diamond),
        })
          ..add(Card(Rank.queen, Suit.heart)),
        equals(CardSet({
          Card(Rank.ace, Suit.spade),
          Card(Rank.queen, Suit.heart),
          Card(Rank.jack, Suit.diamond),
        })),
      );
    });

    test("CardSet<As>.add(As) makes it CardSet<As>", () {
      expect(
        CardSet({Card(Rank.ace, Suit.spade)})..add(Card(Rank.ace, Suit.spade)),
        equals(CardSet({Card(Rank.ace, Suit.spade)})),
      );
    });

    // test("CardSet<As>.add(CardSet.empty) returns CardSet<As>", () {
    //   expect(
    //     CardSet({Card(Rank.ace, Suit.spade)}).union(CardSet.empty),
    //     equals(CardSet({Card(Rank.ace, Suit.spade)})),
    //   );
    // });

    test("CardSet.empty.add(CardSet<As>) makes it CardSet<As>", () {
      expect(
        CardSet.empty..add(Card(Rank.ace, Suit.spade)),
        equals(CardSet({Card(Rank.ace, Suit.spade)})),
      );
    });

    // test("CardSet.empty.union(CardSet.empty) returns CardSet.empty", () {
    //   expect(CardSet.empty.union(CardSet.empty), equals(CardSet.empty));
    // });

    // test("CardSet.full.addAll(CardSet.full) returns CardSet.full", () {
    //   expect(CardSet.full.union(CardSet.full), equals(CardSet.full));
    // });
  });

  group("CardSet#difference()", () {
    test("CardSet<AsJd>.difference(CardSet<QhKh>) returns CardSet<AsQhJdKh>",
        () {
      expect(
        CardSet({
          Card(Rank.ace, Suit.spade),
          Card(Rank.queen, Suit.heart),
          Card(Rank.jack, Suit.diamond),
          Card(Rank.king, Suit.club),
        }).difference(CardSet({
          Card(Rank.ace, Suit.spade),
          Card(Rank.jack, Suit.diamond),
        })),
        equals(CardSet({
          Card(Rank.queen, Suit.heart),
          Card(Rank.king, Suit.club),
        })),
      );
    });

    test("CardSet<As>.difference(CardSet.empty) returns CardSet<As>", () {
      expect(
        CardSet({Card(Rank.ace, Suit.spade)}).difference(CardSet.empty),
        equals(CardSet({Card(Rank.ace, Suit.spade)})),
      );
    });

    test("CardSet.empty.difference(CardSet<As>) returns CardSet.empty", () {
      expect(
        CardSet.empty.difference(CardSet({Card(Rank.ace, Suit.spade)})),
        equals(CardSet.empty),
      );
    });

    test("CardSet.empty.difference(CardSet.empty) returns CardSet.empty", () {
      expect(
        CardSet.empty.difference(CardSet.empty),
        equals(CardSet.empty),
      );
    });

    test("CardSet.full.difference(CardSet.full) returns CardSet.empty", () {
      expect(
        CardSet.full.difference(CardSet.full),
        equals(CardSet.empty),
      );
    });
  });

  group("CardSet#intersection()", () {
    test("CardSet<AsQhJdKc>.intersection(CardSet<QhKh>) returns CardSet<QhKh>",
        () {
      expect(
        CardSet({
          Card(Rank.ace, Suit.spade),
          Card(Rank.queen, Suit.heart),
          Card(Rank.jack, Suit.diamond),
          Card(Rank.king, Suit.club),
        }).intersection(CardSet({
          Card(Rank.queen, Suit.heart),
          Card(Rank.king, Suit.club),
        })),
        equals(CardSet({
          Card(Rank.queen, Suit.heart),
          Card(Rank.king, Suit.club),
        })),
      );
    });

    test("CardSet<As>.intersection(CardSet.empty) returns CardSet.empty", () {
      expect(
        CardSet({Card(Rank.ace, Suit.spade)}).intersection(CardSet.empty),
        equals(CardSet.empty),
      );
    });

    test("CardSet.empty.intersection(CardSet<As>) returns CardSet.empty", () {
      expect(
        CardSet.empty.intersection(CardSet({Card(Rank.ace, Suit.spade)})),
        equals(CardSet.empty),
      );
    });

    test("CardSet.empty.intersection(CardSet.empty) returns CardSet.empty", () {
      expect(
        CardSet.empty.intersection(CardSet.empty),
        equals(CardSet.empty),
      );
    });

    test("CardSet.full.intersection(CardSet.full) returns CardSet.full", () {
      expect(
        CardSet.full.intersection(CardSet.full),
        equals(CardSet.full),
      );
    });
  });

  group("CardSet#iterator", () {
    test(
        "List.from(CardSet<AsQhJdKc>) returns [Card<As>, Card<Qh>, Card<Jd>, Card<Kc>]",
        () {
      expect(
        List.from(CardSet({
          Card(Rank.ace, Suit.spade),
          Card(Rank.queen, Suit.heart),
          Card(Rank.jack, Suit.diamond),
          Card(Rank.king, Suit.club),
        })),
        equals([
          Card(Rank.ace, Suit.spade),
          Card(Rank.queen, Suit.heart),
          Card(Rank.jack, Suit.diamond),
          Card(Rank.king, Suit.club),
        ]),
      );
    });

    test("List.from(CardSet.empty) returns []", () {
      expect(
        List.from(CardSet.empty),
        equals([]),
      );
    });
  });
}
