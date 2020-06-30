import 'package:fitandheal/App/src/Screen/MenuFoodScreen.dart';
import 'package:fitandheal/App/src/Screen/MenuScreen.dart';
import 'package:fitandheal/App/src/Screen/PerformanceScreen.dart';
import 'package:fitandheal/App/src/Screen/WorkoutExcerScreen.dart';
import 'package:fitandheal/App/src/Screen/WorkoutScreen.dart';

import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  int id;
  String name, pass, email, phone;
  BottomBar({
    Key key,
    @required this.id,
    @required this.name,
    @required this.pass,
    @required this.email,
    @required this.phone,
  }) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _index = 0;
  List<Widget> listScreen = [
    WorkoutScreen(),
    WorkExScreen(),
    MenuFoodScreen(),
    PerformanceScreen(),
    MenuScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[_index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'fires.png',
                color: _index == 0 ? Color(0xff7F36FF) : Colors.grey,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Image.asset(
                'clock.png',
                color: _index == 1 ? Color(0xff7F36FF) : Colors.grey,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Image.asset(
                'food.png',
                color: _index == 2 ? Color(0xff7F36FF) : Colors.grey,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Image.asset(
                'barchart.png',
                color: _index == 3 ? Color(0xff7F36FF) : Colors.grey,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Image.asset(
                'user.png',
                color: _index == 4 ? Color(0xff7F36FF) : Colors.grey,
              ),
              title: Text('')),
        ],
      ),
    );
  }
}
