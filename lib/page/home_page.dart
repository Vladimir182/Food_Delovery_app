import 'package:flutter/material.dart';
import 'package:full_food_delivery/components/my_current_location.dart';
import 'package:full_food_delivery/components/my_description_box.dart';
import 'package:full_food_delivery/components/my_drawer.dart';
import 'package:full_food_delivery/components/my_food_tile.dart';
import 'package:full_food_delivery/components/my_sliver_app_bar.dart';
import 'package:full_food_delivery/components/my_tab_bar.dart';
import 'package:full_food_delivery/models/food.dart';
import 'package:full_food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items then pelong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      // get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          // get individual food
          final food = categoryMenu[index];

          // return food tile UI
          return MyFoodTile(food: food, onTap: () {});
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final menu = context.select<Restaurant, List<Food>>(
      (restaurant) => restaurant.menu,
    );
    return Scaffold(
      // appBar: AppBar(title: Text('Home page')),
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // my current location
                const MyCurrentLocation(),
                // description box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: getFoodInThisCategory(menu), // використовуємо menu напряму
        ),
      ),
    );
  }
}
