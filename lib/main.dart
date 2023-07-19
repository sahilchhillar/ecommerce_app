import 'package:flutter/material.dart';
import 'login/login_pages.dart';

void main() {
  runApp(const ECommerce());
}

class ECommerce extends StatelessWidget {
  const ECommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ECommerce App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ECommerceApp(),
    );
  }
}

class ECommerceApp extends StatefulWidget {
  const ECommerceApp({super.key});

  @override
  _ECommerce createState() => _ECommerce();
}

class _ECommerce extends State<ECommerceApp> {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
