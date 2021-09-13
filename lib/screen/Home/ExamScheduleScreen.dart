import 'package:flutter/material.dart';

class ExamScheduleScreen extends StatefulWidget{
  @override
  _ExamScheduleScreen createState() => _ExamScheduleScreen();

}

class _ExamScheduleScreen extends State<ExamScheduleScreen>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Lịch thi"),actions: <Widget>[
        IconButton(icon: Image.asset("assets/images/notification.png"), onPressed: (){

        })
      ]),
      body: Center(
        child: Text("ABC"),

      ),
    );
  }

}