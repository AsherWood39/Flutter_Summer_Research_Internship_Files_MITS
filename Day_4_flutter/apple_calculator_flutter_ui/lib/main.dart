import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 13.0, 285.0, 20.0),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.format_list_bulleted_rounded,
                      color: Colors.orange,
                      size: 28.0,
                    )),
              ),
              Container(
                  height: 180.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(130.0, 42.0, 9.0, 0.0),
                    child: Column(
                      children: [
                        Text(
                          '38,670÷50,000',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 30.0,
                          ),
                        ),
                        Text('0.7734',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                            ))
                      ],
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('AC',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('+/-',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('÷',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45.0,
                            )),
                      )),
                  SizedBox(
                    width: 8.0,
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('7',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('8',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('9',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('x',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                            )),
                      )),
                  SizedBox(
                    width: 8.0,
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('4',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('6',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('-',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                            )),
                      )),
                  SizedBox(
                    width: 8.0,
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('+',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45.0,
                            )),
                      )),
                  SizedBox(
                    width: 8.0,
                  )
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_alt_rounded,
                              color: Colors.white),
                          iconSize: 28.0,
                        ),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                            )),
                      )),
                  Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('=',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55.0,
                            )),
                      )),
                  SizedBox(
                    width: 8.0,
                  )
                ],
              ),
            ],
          )),
    ));
  }
}
