import 'package:flutter/material.dart';

class DepartmentInfoScreen extends StatefulWidget{
  @override
  _DepartmentInfoScreen createState() => _DepartmentInfoScreen();

}

class _DepartmentInfoScreen extends State<DepartmentInfoScreen>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Chương trình đào tạo"),
        actions: <Widget>[
          IconButton(icon: Image.asset("assets/images/notification.png"), onPressed: (){

          })
        ],
      ),
      body: Center(
        child: Text("ABC"),

      ),
    );
  }

}