import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
         home: EightballPage()
      ),
    );
class EightballPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.lightBlueAccent,
        ),
      body: EightBall(),
      );

  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int cuestate=1;

  void cuestatechange(){
    cuestate= Random().nextInt(5)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
             child: Image.asset('images/ball$cuestate.png'), onPressed: () {
              setState(() {
                print('8 ball cue state changed');
                cuestatechange();
              });
            },
            ),
          )
        ],
      ),
    );
  }
}
