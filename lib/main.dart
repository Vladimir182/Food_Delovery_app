import 'package:flutter/material.dart';
import 'package:full_food_delivery/models/restaurant.dart';
import 'package:full_food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

import 'auth/login_or_register.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        // restaurant provider
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: context.watch<ThemeProvider>().themeData,
    );
  }
}
