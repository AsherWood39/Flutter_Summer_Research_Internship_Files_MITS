import 'package:flutter/material.dart';

class CounterHome extends StatefulWidget {
  const CounterHome({super.key});

  @override
  State<CounterHome> createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              'Flutter Demo Home Page',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          elevation: 4.0,
          shadowColor: Colors.black,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .4),
              const Text('You have pushed the button this many times:'),
              Text(
                counter.toString(),
                style: const TextStyle(fontSize: 40.0),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          children: [
            const SizedBox(
              width: 50.0,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              backgroundColor: Colors.blue,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.horizontal_rule_rounded,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            const SizedBox(
              width: 180.0,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter = counter + 1;
                });
              },
              backgroundColor: Colors.blue,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
