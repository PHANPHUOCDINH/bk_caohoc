import 'package:bk_caohoc/screen/Home/DepartmentInfoScreen.dart';
import 'package:bk_caohoc/screen/Home/EnrollSubjectScreen.dart';
import 'package:bk_caohoc/screen/Home/ExamScheduleScreen.dart';
import 'package:bk_caohoc/screen/Home/PersonalScreen.dart';
import 'package:bk_caohoc/screen/Home/ScheduleScreen.dart';
import 'package:bk_caohoc/screen/Home/ScoreScreen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  final List<Widget> _children=[
    ScheduleScreen(),
    ScoreScreen(),
    DepartmentInfoScreen(),
    EnrollSubjectScreen(),
    ExamScheduleScreen(),
    PersonalScreen()
  ];


  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      // appBar: AppBar(
      //   title: Text('Cổng thông tin đào tạo'),
      // ),
      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
            ),
            title: Text(
              'TKB',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
            ),
            title: Text(
              'Điểm TL',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
            ),
            title: Text(
              'CTĐT',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.app_registration,
            ),
            title: Text(
              'ĐKMH',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_contact_calendar,
            ),
            title: Text(
              'Lịch thi',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              'Cá nhân',
            ),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}