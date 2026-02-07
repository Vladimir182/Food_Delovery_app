import 'package:flutter/material.dart';
import 'package:full_food_delivery/models/cart_item.dart';
import 'package:full_food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    final restaurant = context.watch<Restaurant>();
    return Column(
      children: [
        Row(
          children: [
            // food image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                cartItem.food.imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 10),

            // name and price
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food name
                Text(cartItem.food.name),
                // food price
                Text('\$${cartItem.food.price}'),
              ],
            ),
            // increment and decrement quantity
          ],
        ),
      ],
    );
  }
}
