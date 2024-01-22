import 'package:vegetables/models/vegetables.dart';

final vegetables = <VegetablesModel>[
  VegetablesModel(
      name: 'Boston Lettuce',
      price: 1.10,
      unit: Units.piece,
      imageUrl: 'assets/images/Media.png',
      isFavorite: false,
      text:
          'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.'),
  VegetablesModel(
      name: 'Purple Cauliflower',
      price: 1.85,
      unit: Units.kg,
      imageUrl: 'assets/images/Media2.png',
      isFavorite: false,
      text: 'Purple Cauliflower'),
  VegetablesModel(
      name: 'Savoy Cabbage',
      price: 1.45,
      unit: Units.kg,
      imageUrl: 'assets/images/Media3.png',
      isFavorite: false,
      text: 'Savoy Cabbage'),
  VegetablesModel(
      name: 'Boston Cabbage',
      price: 1.00,
      unit: Units.kg,
      imageUrl: 'assets/images/Media3.png',
      isFavorite: false,
      text: 'Boston Cabbage'),
];
