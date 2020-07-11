import "card.dart" show Card;

class CardPair {
  const CardPair(this.a, this.b);

  final Card a;
  final Card b;

  @override
  String toString() => "${a}${b}";

  @override
  int get hashCode {
    int result = 17;

    result = 37 * result + a.hashCode;
    result = 37 * result + b.hashCode;

    return result;
  }

  @override
  operator ==(Object other) =>
      other is CardPair && other.a == a && other.b == b;
}
