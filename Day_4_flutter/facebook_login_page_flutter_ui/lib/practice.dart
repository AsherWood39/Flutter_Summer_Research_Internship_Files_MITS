import 'package:flutter/material.dart';

void main() {
  runApp(MAinApp());
}

class MAinApp extends StatelessWidget {
  const MAinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 57, 23, 117),
              title: Center(
                child: Text(
                  'App Bar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          backgroundColor: const Color.fromARGB(255, 200, 178, 238),
          body: Center(
            child: Row(
                children: [Text('Hello'), Text('World'), Icon(Icons.ac_unit)]),
          )),
    ));
  }
}
