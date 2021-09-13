import 'package:flutter/material.dart';

class EnrollSubjectScreen extends StatefulWidget{
  @override
  _EnrollSubjectScreen createState() => _EnrollSubjectScreen();

}

class _EnrollSubjectScreen extends State<EnrollSubjectScreen>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Đăng ký môn học"),actions: <Widget>[
        IconButton(icon: Image.asset("assets/images/notification.png"), onPressed: (){

        })
      ]),
      body: Center(
        child: Text("ABC"),

      ),
    );
  }

}