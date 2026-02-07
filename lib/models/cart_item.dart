import 'package:full_food_delivery/models/food.dart';

class CartItem {
  final Food food;
  final List<Addon> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });
  @override
  String toString() =>
      'CartItem( food: $food, selectedAddons: $selectedAddons, quantity: $quantity)';
  double get totalPrice {
    double addonsPrice = selectedAddons.fold(
      0,
      (sum, addon) => sum + addon.price,
    );
    return (food.price + addonsPrice) * quantity;
  }
}
