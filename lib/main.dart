import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            'Lets Talk',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Center(
          child: Text(
            'Farhan Aslam',
            textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      body: ball(),
    ),
  ),
);

class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

int n = 1;
void ballchange() {}

class _ballState extends State<ball> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  n = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                'images/ball$n.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
