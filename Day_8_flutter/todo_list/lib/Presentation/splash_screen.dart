import 'package:flutter/material.dart';
import 'package:todo_list/Presentation/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    waitSplashed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/Jitter-Pink-perfect-loop-cubes.gif',
          scale: 3.0,
        ),
        Text(
          'Loading ...',
          style: TextStyle(color: Color(0xFF1A1D2C), fontSize: 18.0),
        )
      ],
    ))));
  }

  Future<void> waitSplashed() async {
    await Future.delayed(const Duration(seconds: 10));
    // ignore: use_build_context_synchronously
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
