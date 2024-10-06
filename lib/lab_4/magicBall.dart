import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Magic8BallApp());

class Magic8BallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  // Function to change ball number randomly
  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1; // Generates a number between 1 and 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: TextButton(
          onPressed: changeBall,
          child: Image.asset('images/ball$ballNumber.png'), // Ball image changes
        ),
      ),
    );
  }
}
