import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      backgroundColor: const Color.fromRGBO(59, 89, 152, 100),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'facebook',
                style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto'),
              ),
              SizedBox(height: 100),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    filled: true,
                    fillColor: Colors.white),
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 1, 12, 71),
                  foregroundColor: Colors.indigo.shade900,
                  fixedSize: Size(500, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // Makes it rounded
                  ),
                ),
                child: Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18.0),
                ),
              ),
              SizedBox(height: 150),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // centers content
                children: [
                  SizedBox(width: 25),
                  Text(
                    'Sign Up for Facebook',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      color: Colors.white, // Make visible on dark background
                    ),
                  ), // adds spacing
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 1, 12, 71), // Background color
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners radius
                    ),
                    child: Center(
                        child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.question_mark, // Question mark icon
                        color: Colors.white,
                        size: 24,
                      ),
                    )),
                  )
                ],
              ),
            ],
          )),
    )));
  }
}
