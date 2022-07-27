import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roll',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('🎲 Dice Roll : Test your luck!!'),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: const Color.fromARGB(255, 235, 248, 149),
        body: const Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftButton = 1;
  int rightButton = 1;

  void updateLeftButton() => leftButton = Random().nextInt(6) + 1;
  void updateRightButton() => rightButton = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () => setState(() {
                        updateLeftButton();
                      }),
                      child: Image.asset(
                        'images/dice$leftButton.png',
                        color: const Color.fromARGB(255, 21, 88, 196),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () => setState(() {
                        updateRightButton();
                      }),
                      child: Image.asset(
                        'images/dice$rightButton.png',
                        color: const Color.fromARGB(255, 229, 55, 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 81, 154, 154)),
                  ),
                  child: const Text("Roll both Dice!!"),
                  onPressed: () => setState(() {
                    updateLeftButton();
                    updateRightButton();
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
