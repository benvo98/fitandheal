import 'package:fitandheal/App/Screen/ExcercisesScreen.dart';
import 'package:fitandheal/App/Widgets/Workout_item.dart';
import 'package:fitandheal/App/model/Workout_model.dart';
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
          margin: EdgeInsets.only(left: 40, top: 79),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    alignment: Alignment.topCenter,
                    child: Text('Workouts',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        )),
                  ),
                ],
              ),
              Container(
                width: 500,
                height: 650,
                child: SingleChildScrollView(
                  child: Wrap(
                    children: List.generate(listWorkout.length, (index) {
                      return Container(
                        width: double.infinity,
                        height: 250,
                        child: Workout_item(
                          title: listWorkout[index].title,
                          imgUrl1: listWorkout[index].imageUrl1,
                          imgUrl2: listWorkout[index].imageUrl2,
                        ),
                      );
                    }),
                  ),
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
