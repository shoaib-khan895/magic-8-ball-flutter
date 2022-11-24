import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('8 Ball'),
          backgroundColor: Colors.red,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int x = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:
          Expanded(
            child: TextButton(
                child: Image.asset('images/ball$x.png'),
                onPressed: () {
                  setState(() {
                    x = Random().nextInt(5) + 1;
                  });
                }),
          )
        ,
      ),
    );
  }
}
