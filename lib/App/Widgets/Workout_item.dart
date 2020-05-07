import 'package:fitandheal/App/Screen/ExcercisesScreen.dart';
import 'package:flutter/material.dart';

class Workout_item extends StatefulWidget {
  final String title;
  final String imgUrl1;
  final String imgUrl2;
  Workout_item({this.title, this.imgUrl1, this.imgUrl2});

  @override
  _Workout_itemState createState() => _Workout_itemState();
}

class _Workout_itemState extends State<Workout_item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: onClicked,
          child: Container(
            width: 325,
            height: 225,
            child: Stack(
              children: <Widget>[
                Container(child: Image.asset(widget.imgUrl1)),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(widget.title),
                ),
                Image.asset(widget.imgUrl2),
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
        ),
      ),
    );
  }

  void onClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EcxerciseScreen()));
  }
}
