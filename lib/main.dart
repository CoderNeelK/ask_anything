import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.indigo.shade800,
            appBar: AppBar(
              title:Center(
                  child: Text('Ask Me Anything')
              ),
              backgroundColor: Colors.indigo.shade400,
            ),
            body: _BallPage(),
          )
      )
  );
}

class _BallPage extends StatefulWidget {
  const _BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}


class _BallPageState extends State<_BallPage> {
  int ballNumber = 1;

  void changeFace() {
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                changeFace();
              },
              child: Image.asset('image/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}