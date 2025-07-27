import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: const Color(0xFF1B1F1D),
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Image.network(
              'https://picsum.photos/200/300/',
              fit: BoxFit.cover,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(24),
                margin: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 180.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.30),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 12,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 70, 103, 1),
                        fontFamily: 'Georgia',
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6)),
                          prefixIcon: const Icon(Icons.person),
                          hintText: 'Username'),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6)),
                          prefixIcon: const Icon(Icons.lock),
                          hintText: 'Password'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _usernameController.clear();
                              _passwordController.clear();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.50),
                              foregroundColor: const Color(0xFF0F1A14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Makes it rounded
                              ),
                            ),
                            child: const Text('Cancel')),
                        const SizedBox(
                          width: 25.0,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              print('Logged in');
                              runApp(const Home());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.50),
                              foregroundColor: const Color(0xFF0F1A14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Makes it rounded
                              ),
                            ),
                            child: const Text('Login'))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF2F3A34),
            elevation: 8,
            shadowColor: const Color(0xFF0F1A14),
            title: Center(
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.height * .1),
                  const Text('Welcome Home',
                      style: TextStyle(
                          color: Color(0xFFAFCF6B),
                          fontFamily: 'Georgia',
                          fontWeight: FontWeight.bold)),
                  const SizedBox(width: 35),
                  IconButton(
                      onPressed: () {
                        print('Logged Out');
                        runApp(MainApp());
                      },
                      icon: Icon(
                        Icons.logout_sharp,
                        color: Colors.lime.shade200,
                        size: 24,
                      ))
                ],
              ),
            ),
          ),
          backgroundColor: const Color(0xFF1B1F1D),
          body: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .32),
            child: Column(
              children: [
                const Text(
                  'Hello World!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 178, 220, 94),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    fontSize: 40.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .25,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print('Elevated/Text Button Clicked');
                        },
                        child: const Text('Button')),
                    const SizedBox(
                      width: 25.0,
                    ),
                    TextButton(
                        onPressed: () {
                          print('Elevated/Text Button Clicked');
                        },
                        child: const Text('Button'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
