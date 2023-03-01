import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftSideDice = 3;
  int rightSideDice = 1;

  void changeDiceFace() {
    setState(() {
      leftSideDice = Random().nextInt(6)+1;
      rightSideDice = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
               changeDiceFace();
              },
              child: Image.asset(
                  'images/dice$leftSideDice.png'
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset(
                  'images/dice$rightSideDice.png'
              ),
            ),
          )
        ],
      ),
    );
  }
}