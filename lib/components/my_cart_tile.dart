import 'package:flutter/material.dart';
import 'package:full_food_delivery/components/my_quantity_selector.dart';
import 'package:full_food_delivery/models/cart_item.dart';
import 'package:full_food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    final restaurant = context.watch<Restaurant>();
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    cartItem.food.imagePath,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(width: 10),

                // name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food name
                    SizedBox(width: 150, child: Text(cartItem.food.name)),
                    // food price
                    Text(
                      '\$${cartItem.food.price}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),

                Spacer(),
                // increment and decrement quantity
                MyQuantitySelector(
                  quantity: cartItem.quantity,
                  food: cartItem.food,
                  onIncrement: () => restaurant.addToCart(
                    cartItem.food,
                    cartItem.selectedAddons,
                  ),

                  onDecrement: () => restaurant.removeFromCart(cartItem),
                ),
              ],
            ),
          ),
          // addons
          if (cartItem.selectedAddons.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 60,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: cartItem.selectedAddons.map((addon) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          selected: false,
                          label: Row(
                            children: [
                              Text(addon.name),
                              SizedBox(width: 5),
                              Text('\$${addon.price.toString()}'),
                            ],
                          ),
                          shape: StadiumBorder(
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          onSelected: (value) {},
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondary,
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 12,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
