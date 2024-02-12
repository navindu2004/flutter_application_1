import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/intro_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/register_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';
import 'package:flutter_application_1/pages/shop_page.dart';
import 'package:flutter_application_1/themes/light_mode.dart';
import 'package:provider/provider.dart';

import 'themes/theme_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider(lightmode)),
      ChangeNotifierProvider(create: (context) => Shop()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: themeProvider.getTheme(),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
        '/login_page': (context) => LoginPage(),
        '/register_page': (context) => RegisterPage(),
        '/settings_page': (context) => const SettingsPage(),
      },
    );
  }
}
