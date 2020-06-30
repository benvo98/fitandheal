import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child: Text(
              'Workouts',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.red.withOpacity(.8)),
            ),
          ),
          Container(
            width: 325,
            height: 225,
            child: Stack(
              children: <Widget>[
                Container(child: Image.asset('Sub3.png')),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Workout 1'),
                ),
                Image.asset('Workout1.png'),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Image.asset('PlayBtn.png'),
                ),
                Container(
                    margin: EdgeInsets.only(left: 200),
                    child: Image.asset('RIP.png')),
                Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('Down.png'))
              ],
            ),
          ),
          Container(
            width: 325,
            height: 225,
            child: Stack(
              children: <Widget>[
                Container(child: Image.asset('Sub4.png')),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Workout 2'),
                ),
                Image.asset('Workout2.png'),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Image.asset('PlayBtn.png'),
                ),
                Container(
                    margin: EdgeInsets.only(left: 200),
                    child: Image.asset('RIP.png')),
                Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('Down.png'))
              ],
            ),
          ),
          Container(
            width: 325,
            height: 225,
            child: Stack(
              children: <Widget>[
                Container(child: Image.asset('Sub5.png')),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Workout 3'),
                ),
                Image.asset('Workout3.png'),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Image.asset('PlayBtn.png'),
                ),
                Container(
                    margin: EdgeInsets.only(left: 200),
                    child: Image.asset('RIP.png')),
                Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('Down.png'))
              ],
            ),
          )
        ],
      )),
    );
  }
}
