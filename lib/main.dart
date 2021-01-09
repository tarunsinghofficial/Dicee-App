import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.grey[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;

  void changeDiceNumber() {
    setState((){
                  leftDiceNumber = Random().nextInt(6) + 1; //We have addded 1 because when it reaches all 6 no it will get hide automaticly
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
  }
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton( //flatbutton comes as a tranapsarent button and we can add image, text or etc
              onPressed: () {

                changeDiceNumber();
                //OR do it in this way
                // setState((){
                //   rightDiceNumber = Random().nextInt(6) + 1;
                //   leftDiceNumber = Random().nextInt(6) + 1;
                // });
              }, 
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ]
      ),
    );
  }
}
