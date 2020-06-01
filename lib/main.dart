import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MainPage(),
      ),
    );

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask the Mystical 8-Ball Anything'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int answerNumber = 1;

  void randomizeAnswer() {
    setState(() {
      answerNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          randomizeAnswer();
          print('Ball got clicked');
        },
        child: Image.asset('images/ball$answerNumber.png'),
      ),
    );
  }
}
