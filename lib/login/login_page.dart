import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text("Hello World"),
              Text("Hello There")
            ],
          ),
        ),
      ),
    );
  }
}
