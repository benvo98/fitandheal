import 'package:fitandheal/App/Screen/ExcercisesScreen.dart';
import 'package:fitandheal/App/Widgets/WorkoutItem.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 40, top: 79, right: 40),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    alignment: Alignment.topCenter,
                    child: Text('Bài tập phổ biến',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        )),
                  ),
                ],
              ),
              GestureDetector(
                onTap: onClicked,
                child: Container(
                  height: 600,
                  child: Container(
                      width: double.infinity,
                      height: 200,
                      child: WorkoutItem()),
                ),
              ),
            ],
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
