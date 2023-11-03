enum Units { piece, kg }

class Vegetables {
  const Vegetables(
      {required this.name,
      required this.price,
      required this.unit,
      required this.imageUrl});

  final String name;
  final double price;
  final Units unit;
  final String imageUrl;
}
