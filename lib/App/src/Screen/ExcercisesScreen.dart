import 'package:fitandheal/App/model/Excercises_model.dart';
import 'package:fitandheal/App/src/Screen/QuickHitScreen.dart';
import 'package:fitandheal/App/src/Widgets/Excercises_item.dart';
import 'package:flutter/material.dart';

class EcxerciseScreen extends StatefulWidget {
  @override
  _EcxerciseScreenState createState() => _EcxerciseScreenState();
}

class _EcxerciseScreenState extends State<EcxerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 79, left: 25),
                    child: Text(
                      'Excercises',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 85, left: 100),
                    child: Text(
                      'Day 1',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 85, left: 5),
                      child: BackButton())
                ],
              ),
            ),
            Container(
              width: 500,
              height: 550,
              child: SingleChildScrollView(
                child: Wrap(
                  children: List.generate(excercisesItem.length, (index) {
                    return Container(
                      width: double.infinity,
                      height: 150,
                      child: GestureDetector(
                        onTap: onClicked1,
                        child: ExcercisesItem(
                          imageUrl: excercisesItem[index].imageUrl,
                          title: excercisesItem[index].title,
                          text: excercisesItem[index].text,
                          colors: excercisesItem[index].colors,
                          colors2: excercisesItem[index].colors2,
                          witdhs: excercisesItem[index].witdhs,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Container(
              width: 325,
              height: 50,
              margin: EdgeInsets.only(top: 43),
              child: RaisedButton(
                onPressed: onClicked1,
                color: Color(0xff8B63E6).withOpacity(.9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.5)),
                child: Text(
                  'Start Workout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onClicked1() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => QuickHitScreen()));
  }
}
