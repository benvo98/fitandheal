import 'dart:convert';
import 'package:fitandheal/App/Screen/ExcercisesScreen.dart';
import 'package:fitandheal/App/Widgets/Excercises_item.dart';
import 'package:fitandheal/App/models/Workout.dart';
import 'package:fitandheal/App/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as Http_dio;
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'ApiItem/ExcercisesItem.dart';

class WorkoutItem extends StatelessWidget {
  Http_dio.Dio dio = Http_dio.Dio();

  Future<List<Workout>> getWorkout() async {
    Http_dio.Response response =
        await dio.get("http://fitandheal.somee.com/api/Workout");

    if (response.statusCode == 200) {
      final List data = jsonDecode(jsonEncode(response.data));
      List<Workout> listWorkoutData =
          data.map((f) => Workout.fromJson(f)).toList();
      return listWorkoutData;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: getWorkout(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Workout>> snapshot) {
            if (snapshot.data == null) {
              return CircularPercentIndicator(radius: 30);
            }
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 320,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image:
                                    NetworkImage(snapshot.data[index].hinhAnh),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 9, top: 9),
                        width: 120,
                        height: 50,
                        color: Color(0xfff5bb41),
                        child: Card(
                          elevation: 10.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              snapshot.data[index].tenWorkout,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 50),
                        child: Image.asset('PlayBtn.png'),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
