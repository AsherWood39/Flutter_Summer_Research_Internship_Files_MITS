import 'package:flutter/material.dart';
import 'package:whatsapp_flutter_ui/Presentation/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenSplash(),
    );
  }
}
