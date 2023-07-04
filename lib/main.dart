import 'package:e_commerce_mobile_app/pages/cart_page.dart';
import 'package:e_commerce_mobile_app/pages/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_mobile_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        'home_page':(context) {
          return const HomePage();
        },
        'product_details':(context) {
          return const ProductDetailsPage();
        },
        'cart_page':(context) {
          return const CartPage();
        },
      },
      home: const HomePage(),
    );
  }
}
