import 'package:flutter/material.dart';
import 'package:ecommerce_app/home_screen/home_pages.dart';

void main() {
  runApp(const ECommerce());
}

class ECommerce extends StatelessWidget{
  const ECommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ECommerce App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ECommerceApp(),
    );
  }
}
