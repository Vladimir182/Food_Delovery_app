import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:full_food_delivery/models/cart_item.dart';
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
    Food(
      name: "French Fries",
      description:
          "Crispy golden fries, perfectly salted, served hot and fresh.",
      imagePath:
          "https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Bacon bits", price: 1.49),
        Addon(name: "Chili sauce", price: 0.79),
      ],
    ),

    Food(
      name: "Onion Rings",
      description:
          "Crispy battered onion rings, golden fried and served with a tangy dipping sauce.",
      imagePath:
          "https://images.pexels.com/photos/5665669/pexels-photo-5665669.jpeg",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch dip", price: 0.79),
        Addon(name: "Spicy mayo", price: 0.99),
        Addon(name: "Extra crispy", price: 0.50),
      ],
    ),

    Food(
      name: "Mozzarella Sticks",
      description:
          "Golden fried mozzarella sticks with a gooey cheese center, served with marinara sauce.",
      imagePath:
          "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg",
      price: 4.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra marinara sauce", price: 0.79),
        Addon(name: "Garlic dip", price: 0.99),
        Addon(name: "Parmesan sprinkle", price: 0.50),
      ],
    ),

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

    // Salads
    Food(
      name: "Greek Salad",
      description:
          "A refreshing mix of juicy tomatoes, crisp cucumbers, red onion, Kalamata olives, and creamy feta cheese, tossed with olive oil and herbs.", // класичний грецький салат :contentReference[oaicite:1]{index=1}
      imagePath:
          "https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg",
      price: 6.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 3.99),
        Addon(name: "Extra feta", price: 1.49),
        Addon(name: "Avocado", price: 2.29),
      ],
    ),

    Food(
      name: "Beet & Goat Cheese Salad",
      description:
          "Roasted beets with creamy goat cheese, toasted walnuts, mixed greens, and a light balsamic vinaigrette — earthy and vibrant.",
      imagePath:
          "https://images.pexels.com/photos/8696556/pexels-photo-8696556.jpeg", // салат з буряка :contentReference[oaicite:2]{index=2}
      price: 7.29,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Honey drizzle", price: 0.99),
        Addon(name: "Candied pecans", price: 1.49),
        Addon(name: "Extra goat cheese", price: 1.99),
      ],
    ),

    Food(
      name: "Waldorf Salad",
      description:
          "A classic combination of crisp apples, juicy grapes, crunchy celery, walnuts, and creamy dressing over fresh greens.", // Віндзорський салат (Waldorf) — фруктово‑горіховий салат :contentReference[oaicite:3]{index=3}
      imagePath:
          "https://images.pexels.com/photos/3045332/pexels-photo-3045332.jpeg",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled turkey", price: 3.49),
        Addon(name: "Extra walnuts", price: 1.29),
        Addon(name: "Blue cheese", price: 1.99),
      ],
    ),

    //dessert
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm, rich chocolate cake with a gooey molten center, served with a scoop of vanilla ice cream.",
      imagePath:
          "https://images.pexels.com/photos/3026807/pexels-photo-3026807.jpeg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra ice cream", price: 1.49),
        Addon(name: "Whipped cream", price: 0.99),
        Addon(name: "Chocolate drizzle", price: 0.79),
      ],
    ),

    Food(
      name: "Strawberry Cheesecake",
      description:
          "Creamy cheesecake topped with fresh strawberries and a sweet strawberry glaze.",
      imagePath:
          "https://images.pexels.com/photos/3026805/pexels-photo-3026805.jpeg",
      price: 6.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra strawberries", price: 1.29),
        Addon(name: "Chocolate chips", price: 0.99),
        Addon(name: "Caramel drizzle", price: 0.79),
      ],
    ),

    Food(
      name: "Tiramisu",
      description:
          "Classic Italian dessert with layers of coffee-soaked ladyfingers, mascarpone cream, and cocoa powder on top.",
      imagePath:
          "https://images.pexels.com/photos/3026804/pexels-photo-3026804.jpeg",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cocoa powder", price: 0.49),
        Addon(name: "Espresso shot", price: 1.29),
        Addon(name: "Chocolate shavings", price: 0.99),
      ],
    ),

    // drinks
    Food(
      name: "Coca-Cola",
      description: "Classic, refreshing cola served chilled over ice.",
      imagePath:
          "https://images.pexels.com/photos/1591060/pexels-photo-1591060.jpeg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon slice", price: 0.29),
        Addon(name: "Extra ice", price: 0.10),
        Addon(name: "Cherry syrup", price: 0.49),
      ],
    ),

    Food(
      name: "Fresh Orange Juice",
      description:
          "Freshly squeezed orange juice, naturally sweet and full of vitamin C.",
      imagePath:
          "https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg",
      price: 3.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Ice cubes", price: 0.10),
        Addon(name: "Mint leaves", price: 0.29),
        Addon(name: "Extra orange shot", price: 0.99),
      ],
    ),

    Food(
      name: "Iced Coffee",
      description:
          "Chilled coffee served over ice with optional milk and sweetener.",
      imagePath:
          "https://images.pexels.com/photos/374885/pexels-photo-374885.jpeg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Vanilla syrup", price: 0.49),
        Addon(name: "Extra espresso shot", price: 0.99),
        Addon(name: "Whipped cream", price: 0.79),
      ],
    ),
  ];

  /*

    GETTERS

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // OPERATIONS

  //user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );
      return isSameFood && isSameAddons;
    });

    //if item alredy exists increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

    HELPERS

  */
}
