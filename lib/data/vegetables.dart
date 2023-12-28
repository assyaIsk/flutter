enum Units { piece, kg }

class Vegetables {
  Vegetables(
      {required this.name,
      required this.price,
      required this.unit,
      required this.imageUrl,
      required this.text,
      required this.isFavorite});

  final String name;
  final double price;
  final Units unit;
  final String imageUrl;
  final String text;
  bool isFavorite;
}
