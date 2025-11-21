import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget? child;

  const MySliverAppBar({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text('Sunset dinner'),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        expandedTitleScale: 1,
      ),
    );
  }
}
