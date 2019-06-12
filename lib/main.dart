import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade300,
          appBar: AppBar(
            title: Text('Ask me anything!!'),
            backgroundColor: Colors.blue.shade800,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int randomNumberLessThan6 = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              setState(() {
                randomNumberLessThan6 = getRandomNumberLessThanSix();
              });
            },
            child: Image.asset('images/ball$randomNumberLessThan6.png'),
          ),
          Padding(
            padding: EdgeInsets.all(15.00),
            child: Text(
              'Confused ? press me :P',
              style: TextStyle(
                  color: Colors.white, letterSpacing: 2.00, fontSize: 20.00),
            ),
          )
        ],
      ),
    );
  }

  int getRandomNumberLessThanSix() {
    return Random().nextInt(5) + 1;
  }
}
