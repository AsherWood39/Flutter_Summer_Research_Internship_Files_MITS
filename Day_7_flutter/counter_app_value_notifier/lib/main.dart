import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  MainApp({super.key});

  ValueNotifier<int> counterNotifier = ValueNotifier(0);
  ValueNotifier<bool> isSelected = ValueNotifier(true);
  ValueNotifier<Color> textColor = ValueNotifier(Colors.black);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple.shade50,
            title: const Center(
              child: Text(
                'Flutter Demo Home Page',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            elevation: 4.0,
            shadowColor: Colors.purple.shade700,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          textColor.value = Colors.red;
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.red)),
                        child: const Text('')),
                    ElevatedButton(
                        onPressed: () {
                          textColor.value = Colors.green;
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.green)),
                        child: const Text('')),
                    ElevatedButton(
                        onPressed: () {
                          textColor.value = Colors.blue;
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.blue)),
                        child: const Text('')),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .3),
                ValueListenableBuilder<Color>(
                    valueListenable: textColor,
                    builder: (context, newColor, _) {
                      return Column(
                        children: [
                          Text('You Have Clicked:',
                              style: TextStyle(color: newColor)),
                          ValueListenableBuilder<int>(
                              valueListenable: counterNotifier,
                              builder: (context, newCounter, _) {
                                return ValueListenableBuilder(
                                    valueListenable: isSelected,
                                    builder: (context, bool newVisibility, _) {
                                      return Visibility(
                                        visible: newVisibility,
                                        child: Text(
                                          newCounter.toString(),
                                          style: TextStyle(
                                              fontSize: 40.0, color: newColor),
                                        ),
                                      );
                                    });
                              }),
                        ],
                      );
                    }),
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
                  counterNotifier.value = counterNotifier.value - 1;
                },
                child: const Icon(Icons.horizontal_rule_rounded),
              ),
              const SizedBox(
                width: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  isSelected.value = isSelected.value == true ? false : true;
                },
                style: ButtonStyle(
                    elevation: WidgetStateProperty.all(10),
                    shadowColor: WidgetStateProperty.all(Colors.black),
                    padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 20.0)),
                    backgroundColor:
                        WidgetStateProperty.all(Colors.purple.shade50),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        // You can define any shape for the button
                        borderRadius: BorderRadius.circular(12),
                      ),
                    )),
                child: ValueListenableBuilder(
                    valueListenable: isSelected,
                    builder: (context, bool newTextContent, _) {
                      return Text(
                        newTextContent ? 'Hide' : 'Show',
                        style: const TextStyle(
                            color: Colors.black, fontSize: 16.0),
                      );
                    }),
              ),
              const SizedBox(
                width: 50.0,
              ),
              FloatingActionButton(
                onPressed: () {
                  counterNotifier.value = counterNotifier.value + 1;
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
