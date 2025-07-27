import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 249, 211, 215),
            body: Center(
                child: Text(
              'Welcome Home',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
                fontSize: 25.0,
                letterSpacing: 1.2,
              ),
            ))));
  }
}
