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
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  DicePage({super.key});
  var leftButtonClickCount = 0;
  var rightButtonClickCount = 0;

  @override
  Widget build(BuildContext context) {
    leftButtonClickCount = leftButtonClickCount % 6 + 1;
    rightButtonClickCount = rightButtonClickCount % 6 + 1;

    var leftDieImage = 'images/dice$leftButtonClickCount.png';
    var rightDieImage = 'images/dice$rightButtonClickCount.png';

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  leftButtonClickCount = leftButtonClickCount++ % 6 + 1;
                  leftDieImage = 'images/dice$leftButtonClickCount.png';

                  var snackBar = SnackBar(
                    content: Text(leftDieImage),
                    duration: const Duration(milliseconds: 800),
                    action: SnackBarAction(
                      label: 'Ok',
                      onPressed: () {},
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Image(
                  key: key,
                  image: AssetImage(leftDieImage),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  rightButtonClickCount = rightButtonClickCount++ % 6 + 1;
                  rightDieImage = 'images/dice$rightButtonClickCount.png';

                  var snackBar = SnackBar(
                    content: Text(rightDieImage),
                    duration: const Duration(milliseconds: 800),
                    action: SnackBarAction(
                      label: 'Ok',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Image.asset(rightDieImage),
              ),
            ),
          ),
        ],
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
    leftButtonClickCount = leftButtonClickCount % 6 + 1;
    rightButtonClickCount = rightButtonClickCount % 6 + 1;

    var leftDieImage = 'images/dice$leftButtonClickCount.png';
    var rightDieImage = 'images/dice$rightButtonClickCount.png';

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  leftButtonClickCount = leftButtonClickCount++ % 6 + 1;
                  leftDieImage = 'images/dice$leftButtonClickCount.png';

                  var snackBar = SnackBar(
                    content: Text(leftDieImage),
                    duration: const Duration(milliseconds: 800),
                    action: SnackBarAction(
                      label: 'Ok',
                      onPressed: () {},
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Image(
                  image: AssetImage(leftDieImage),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  rightButtonClickCount = rightButtonClickCount++ % 6 + 1;
                  rightDieImage = 'images/dice$rightButtonClickCount.png';

                  var snackBar = SnackBar(
                    content: Text(rightDieImage),
                    duration: const Duration(milliseconds: 800),
                    action: SnackBarAction(
                      label: 'Ok',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Image.asset(rightDieImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
