import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.purple,
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
  int leftButtonNumber = 1;
  int rightButtonNumber = 1;

  void changeDiceFace(){ 
     setState(() {
        leftButtonNumber = Random().nextInt(6) + 1;
        rightButtonNumber = Random().nextInt(6) + 1;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row( 
        children: <Widget> [
          Expanded(
            child: FlatButton( 
            onPressed: (){ 
              changeDiceFace();
            },
            child: Image.asset('images/dice$leftButtonNumber.png'),
           ),
          ),
          Expanded(
            child: FlatButton( 
            onPressed: (){ 
              changeDiceFace();            },
            child: Image.asset('images/dice$rightButtonNumber.png'),
           ),
          ),
        ],
      ), 
    );
  }
}
