import 'package:bk_caohoc/screen/Home/FullScheduleScreen.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';
import 'nav.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // Size size = MediaQuery.of(context).size;

     return MaterialApp(
       home: Nav()//FullScheduleScreen()
     );
   //    home: Nav(),

      // theme: ThemeData(
      //
      //    primaryColor: kPrimaryColor,
      //    scaffoldBackgroundColor: Colors.white,
      //  ),

  }
}