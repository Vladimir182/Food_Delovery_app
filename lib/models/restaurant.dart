import 'package:flutter/foundation.dart';
import 'package:full_food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    // Food(
    //   name: "Classic Cheeseburger",
    //   description:
    //       "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
    //   imagePath: "lib/images/burgers/1.png",
    //   price: 0.99,
    //   category: FoodCategory.burgers,
    //   availableAddons: [
    //     Addon(name: "Extra cheese", price: 0.99),
    //     Addon(name: "Bacon", price: 1.99),
    //     Addon(name: "Avocado", price: 2.99),
    //   ],
    // ),
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, fresh lettuce, tomato, onion, and crunchy pickles",
      imagePath:
          "https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg", // класичний бургер :contentReference[oaicite:1]{index=1}
      price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.49),
      ],
    ),

    Food(
      name: "Double Beef Burger",
      description:
          "Two juicy beef patties layered with double cheddar, crispy lettuce, and signature burger sauce",
      imagePath:
          "https://images.pexels.com/photos/1639566/pexels-photo-1639566.jpeg", // подвійний бургер :contentReference[oaicite:2]{index=2}
      price: 6.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra patty", price: 2.49),
        Addon(name: "Jalapenos", price: 0.79),
      ],
    ),

    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky beef patty topped with crispy bacon, cheddar cheese, onion rings, and rich BBQ sauce",
      imagePath:
          "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg", // бургер з беконом :contentReference[oaicite:3]{index=3}
      price: 6.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra bacon", price: 1.99),
        Addon(name: "BBQ sauce", price: 0.49),
      ],
    ),

    Food(
      name: "Spicy Chicken Burger",
      description:
          "Crispy spicy chicken fillet with fresh lettuce, tomatoes, and creamy spicy mayo",
      imagePath:
          "https://images.pexels.com/photos/1639558/pexels-photo-1639558.jpeg", // курячий бургер :contentReference[oaicite:4]{index=4}
      price: 5.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra spicy sauce", price: 0.69),
        Addon(name: "Cheese", price: 0.99),
      ],
    ),

    Food(
      name: "Mushroom Swiss Burger",
      description:
          "Tender beef patty topped with sautéed mushrooms, melted Swiss cheese, and garlic sauce",
      imagePath:
          "https://images.pexels.com/photos/1639561/pexels-photo-1639561.jpeg", // бургер з грибами та сиром :contentReference[oaicite:5]{index=5}
      price: 6.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra mushrooms", price: 0.99),
        Addon(name: "Swiss cheese", price: 1.19),
      ],
    ),

    Food(
      name: "Veggie Burger",
      description:
          "Grilled plant-based patty with avocado, lettuce, tomato, and vegan sauce",
      imagePath:
          "https://images.pexels.com/photos/1640770/pexels-photo-1640770.jpeg", // вегетаріанський бургер :contentReference[oaicite:6]{index=6}
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan cheese", price: 1.29),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),

    //sides
    // Food(
    //   name: "Classic Salads",
    //   description:
    //       "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
    //   imagePath: "lib/images/burgers/1.png",
    //   price: 0.99,
    //   category: FoodCategory.salads,
    //   availableAddons: [
    //     Addon(name: "Extra cheese", price: 0.99),
    //     Addon(name: "Bacon", price: 1.99),
    //     Addon(name: "Avocado", price: 2.99),
    //   ],
    // ),

    //dessert

    // drinks
  ];

  /*

    GETTERS

  */

  List<Food> get menu => _menu;

  /*

    OPERATIONS

  */

  /*

    HELPERS

  */
}
