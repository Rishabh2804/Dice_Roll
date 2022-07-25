import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
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
  var leftButtonClickCount = 0;
  var rightButtonClickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftButtonClickCount++;
                    var snackBar = SnackBar(
                      content: Text(
                          'Left button clicked $leftButtonClickCount times'),
                      duration: const Duration(milliseconds: 800),
                      action: SnackBarAction(
                        label: 'Ok',
                        onPressed: () {},
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
                child: Image(
                  image: AssetImage(
                      'images/dice${leftButtonClickCount % 6 + 1}.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightButtonClickCount++;

                    var snackBar = SnackBar(
                      content: Text(
                          'Right button clicked $rightButtonClickCount times'),
                      duration: const Duration(milliseconds: 800),
                      action: SnackBarAction(
                        label: 'Ok',
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
                child: Image.asset(
                    'images/dice${rightButtonClickCount % 6 + 1}.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
