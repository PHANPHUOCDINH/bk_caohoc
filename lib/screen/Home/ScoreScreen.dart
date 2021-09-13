import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget{
  @override
  _ScoreScreen createState() => _ScoreScreen();

}

class _ScoreScreen extends State<ScoreScreen>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Điểm tích lũy"),actions: <Widget>[
        IconButton(icon: Image.asset("assets/images/notification.png"), onPressed: (){

        })
      ]),
      body: Center(
        child: Text("ABC"),

      ),
    );
  }

}