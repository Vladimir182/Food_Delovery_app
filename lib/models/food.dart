class Food {
  final String name; // cheese burger
  final String description; // a burger full of cheese
  final String imagePath; // lib/images/cheese_burger.png
  final double price; // 4.99
  final FoodCategory category; // burger
  final List<Addon> availableAddons; // [ extra cheese, sauce, extra patty]

  Food(
    this.category,
    this.availableAddons, {
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  });
}

// food categories
enum FoodCategory { burgers, salads, sides, desserts, drink }

// food addon

class Addon {
  String name;
  String price;

  Addon({required this.name, required this.price});
}
