import 'package:flutter/material.dart';
import 'package:full_food_delivery/components/my_cart_tile.dart';
import 'package:full_food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurant = context.watch<Restaurant>();
    // cart
    final userCart = restaurant.cart;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: userCart.length,
              itemBuilder: (context, index) {
                // get individual cart item
                final cartItem = userCart[index];
                print(cartItem);
                // return cart tile UI
                return MyCartTile(cartItem: cartItem);
              },
            ),
          ),
        ],
      ),
    );
  }
}
