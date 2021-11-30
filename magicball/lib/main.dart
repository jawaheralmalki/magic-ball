import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: const Text("Ask Me Anything"),
          backgroundColor: Colors.blue[700],
        ),
        body: Ball(),
      ),
    ));

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(
                () {
                  ballNum = Random().nextInt(5) + 1;
                },
              );
            },
            child: Expanded(
              child: Image(
                image: AssetImage('images/ball$ballNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
