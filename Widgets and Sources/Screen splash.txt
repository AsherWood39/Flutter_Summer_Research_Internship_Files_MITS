import 'package:day_5/Presentation/home_screen.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    waitSplashed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            body:
                Center(child: CircularProgressIndicator(color: Colors.pink))));
  }

  Future<void> waitSplashed() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ScreenHome()));
  }
}
