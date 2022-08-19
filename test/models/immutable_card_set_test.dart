// ignore_for_file: avoid_relative_lib_imports

import 'package:test/test.dart';
import '../../lib/src/models/card.dart';
import '../../lib/src/models/immutable_card_set.dart';
import '../../lib/src/models/rank.dart';
import '../../lib/src/models/suit.dart';

void main() {
  group('ImmutableCardSet', () {
    test(
        'ImmutableCardSet.empty() has a 52-bit hash int value that its every bit is 0',
        () {
      expect(ImmutableCardSet.empty(), isEmpty);
    });

    test(
        'ImmutableCardSet.full() has a 52-bit hash int value that its every bit is 1',
        () {
      expect(ImmutableCardSet.full(), hasLength(52));
    });

    group('ImmutableCardSet.parse()', () {
      test(
          'ImmutableCardSet.parse("AsKcQhJd") returns a ImmutableCardSet<{ As, Qh, Jd, Kh }>',
          () {
        expect(
          ImmutableCardSet.parse('AsKcQhJd'),
          equals(ImmutableCardSet.of({
            Card(Rank.ace, Suit.spade),
            Card(Rank.queen, Suit.heart),
            Card(Rank.jack, Suit.diamond),
            Card(Rank.king, Suit.club),
          })),
        );
      });

      test('ImmutableCardSet.parse("") returns an empty ImmutableCardSet', () {
        expect(
          ImmutableCardSet.parse(''),
          equals(ImmutableCardSet.empty()),
        );
      });

      test(
          'ImmutableCardSet.parse("AsKC") throws a ImmutableCardSetParseFailure',
          () {
        expect(
          () => ImmutableCardSet.parse('AsKC'),
          throwsA(isA<ImmutableCardSetParseFailure>()),
        );
      });

      test(
          'ImmutableCardSet.parse("AsKcqh") throws a ImmutableCardSetParseFailure',
          () {
        expect(
          () => ImmutableCardSet.parse('AsKcqh'),
          throwsA(isA<ImmutableCardSetParseFailure>()),
        );
      });

      test(
          'ImmutableCardSet.parse("AKs") throws a ImmutableCardSetParseFailure',
          () {
        expect(
          () => ImmutableCardSet.parse('AKs'),
          throwsA(isA<ImmutableCardSetParseFailure>()),
        );
      });

      test('ImmutableCardSet.parse("44") throws a ImmutableCardSetParseFailure',
          () {
        expect(
          () => ImmutableCardSet.parse('44'),
          throwsA(isA<ImmutableCardSetParseFailure>()),
        );
      });

      test(
          'ImmutableCardSet.parse("As+") throws a ImmutableCardSetParseFailure',
          () {
        expect(
          () => ImmutableCardSet.parse('As+'),
          throwsA(isA<ImmutableCardSetParseFailure>()),
        );
      });
    });

    group('ImmutableCardSet#length', () {
      test('ImmutableCardSet<{ As, Qh, Jd, Kc }>.length returns 4', () {
        expect(
          ImmutableCardSet.of({
            Card(Rank.ace, Suit.spade),
            Card(Rank.queen, Suit.heart),
            Card(Rank.jack, Suit.diamond),
            Card(Rank.king, Suit.club),
          }).length,
          equals(4),
        );
      });

      test('ImmutableCardSet<{ As }>.length returns 1', () {
        expect(
          ImmutableCardSet.of({Card(Rank.ace, Suit.spade)}).length,
          equals(1),
        );
      });

      test('ImmutableCardSet.empty().length returns 0', () {
        expect(ImmutableCardSet.empty().length, equals(0));
      });

      test('ImmutableCardSet.full().length returns 52', () {
        expect(ImmutableCardSet.full().length, equals(52));
      });
    });

    group('ImmutableCardSet#contains()', () {
      test('ImmutableCardSet<AsQhJdKh>.contains(Card<Jd>) returns true', () {
        expect(
          ImmutableCardSet.of({
            Card(Rank.ace, Suit.spade),
            Card(Rank.queen, Suit.heart),
            Card(Rank.jack, Suit.diamond),
            Card(Rank.king, Suit.club),
          }).contains(Card(Rank.jack, Suit.diamond)),
          isTrue,
        );
      });

      test(
          'ImmutableCardSet.empty().contains(ImmutableCardSet<2c>) returns false',
          () {
        expect(ImmutableCardSet.empty().contains(Card(Rank.deuce, Suit.club)),
            isFalse);
      });
    });

    group('ImmutableCardSet#containsAll()', () {
      test(
          'ImmutableCardSet<2c>.containsAll(ImmutableCardSet.empty()) returns true',
          () {
        expect(
          ImmutableCardSet.of({Card(Rank.deuce, Suit.club)})
              .containsAll(ImmutableCardSet.empty()),
          isTrue,
        );
      });

      test(
          'ImmutableCardSet.empty().containsAll(ImmutableCardSet.empty()) returns true',
          () {
        expect(ImmutableCardSet.empty().containsAll(ImmutableCardSet.empty()),
            isTrue);
      });

      test(
          'ImmutableCardSet.full().containsAll(ImmutableCardSet.full()) returns true',
          () {
        expect(ImmutableCardSet.full().containsAll(ImmutableCardSet.full()),
            isTrue);
      });
    });

    group('ImmutableCardSet#add()', () {
      test('ImmutableCardSet<AsJd>.added(Qh) returns ImmutableCardSet<AsQhJd>',
          () {
        expect(
          ImmutableCardSet.of({
            Card(Rank.ace, Suit.spade),
            Card(Rank.jack, Suit.diamond),
          }).added(Card(Rank.queen, Suit.heart)),
          equals(ImmutableCardSet.of({
            Card(Rank.ace, Suit.spade),
            Card(Rank.queen, Suit.heart),
            Card(Rank.jack, Suit.diamond),
          })),
        );
      });

      test('ImmutableCardSet<As>.added(As) returns ImmutableCardSet<As>', () {
        expect(
          ImmutableCardSet.of({Card(Rank.ace, Suit.spade)})
              .added(Card(Rank.ace, Suit.spade)),
          equals(ImmutableCardSet.of({Card(Rank.ace, Suit.spade)})),
        );
      });

      test(
          'ImmutableCardSet.empty().added(ImmutableCardSet<As>) returns ImmutableCardSet<As>',
          () {
        expect(
          ImmutableCardSet.empty().added(Card(Rank.ace, Suit.spade)),
          equals(ImmutableCardSet.of({Card(Rank.ace, Suit.spade)})),
        );
      });
    });

    group('ImmutableCardSet#addedAll()', () {
      test(
          'ImmutableCardSet<As>.addedAll(ImmutableCardSet.empty()) returns ImmutableCardSet<As>',
          () {
        expect(
          ImmutableCardSet.of({Card(Rank.ace, Suit.spade)})
              .addedAll(ImmutableCardSet.empty()),
          equals(ImmutableCardSet.of({Card(Rank.ace, Suit.spade)})),
        );
      });

      test(
          'ImmutableCardSet.empty().addedAll(ImmutableCardSet.empty()) returns ImmutableCardSet.empty()',
          () {
        expect(
          ImmutableCardSet.empty().addedAll(ImmutableCardSet.empty()),
          equals(ImmutableCardSet.empty()),
        );
      });

      test(
          'ImmutableCardSet.full().addAll(ImmutableCardSet.full()) returns ImmutableCardSet.full()',
          () {
        expect(ImmutableCardSet.full().addedAll(ImmutableCardSet.full()),
            equals(ImmutableCardSet.full()));
      });
    });

    group('ImmutableCardSet#removedAll()', () {
      test(
          'ImmutableCardSet<AsJd>.removedAll(ImmutableCardSet<QhKh>) returns ImmutableCardSet<AsQhJdKh>',
          () {
        expect(
          ImmutableCardSet.of({
            Card(Rank.ace, Suit.spade),
            Card(Rank.queen, Suit.heart),
            Card(Rank.jack, Suit.diamond),
            Card(Rank.king, Suit.club),
          }).removedAll(ImmutableCardSet.of({
            Card(Rank.ace, Suit.spade),
            Card(Rank.jack, Suit.diamond),
          })),
          equals(ImmutableCardSet.of({
            Card(Rank.queen, Suit.heart),
            Card(Rank.king, Suit.club),
          })),
        );
      });

      test(
          'ImmutableCardSet<As>.removedAll(ImmutableCardSet.empty()) returns ImmutableCardSet<As>',
          () {
        expect(
          ImmutableCardSet.of({Card(Rank.ace, Suit.spade)})
              .removedAll(ImmutableCardSet.empty()),
          equals(ImmutableCardSet.of({Card(Rank.ace, Suit.spade)})),
        );
      });

      test(
          'ImmutableCardSet.empty().removedAll(ImmutableCardSet<As>) returns ImmutableCardSet.empty()',
          () {
        expect(
          ImmutableCardSet.empty()
              .removedAll(ImmutableCardSet.of({Card(Rank.ace, Suit.spade)})),
          equals(ImmutableCardSet.empty()),
        );
      });

      test(
          'ImmutableCardSet.empty().removedAll(ImmutableCardSet.empty()) returns ImmutableCardSet.empty()',
          () {
        expect(
          ImmutableCardSet.empty().removedAll(ImmutableCardSet.empty()),
          equals(ImmutableCardSet.empty()),
        );
      });

      test(
          'ImmutableCardSet.full().removedAll(ImmutableCardSet.full()) returns ImmutableCardSet.empty()',
          () {
        expect(
          ImmutableCardSet.full().removedAll(ImmutableCardSet.full()),
          equals(ImmutableCardSet.empty()),
        );
      });
    });

    group('ImmutableCardSet#iterator', () {
      test(
          'List.from(ImmutableCardSet<AsQhJdKc>) returns [Card<As>, Card<Qh>, Card<Jd>, Card<Kc>]',
          () {
        expect(
          List.from(ImmutableCardSet.of({
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

      test('List.from(ImmutableCardSet.empty()) returns []', () {
        expect(
          List.from(ImmutableCardSet.empty()),
          equals([]),
        );
      });
    });
  });
}
