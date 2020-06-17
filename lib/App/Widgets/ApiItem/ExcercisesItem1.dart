import 'dart:convert';

import 'package:fitandheal/App/models/ExcerciseModel.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as Http_dio;
import 'package:percent_indicator/circular_percent_indicator.dart';

class ExcercisesItem1 extends StatelessWidget {
  String text;
  ExcercisesItem1({Key key, @required this.text}) : super(key: key);

  Http_dio.Dio dio = Http_dio.Dio();

  Future<List<ExcercisesModel>> _getExcercises() async {
    Http_dio.Response response =
        await dio.get("http://fitandheal.somee.com/api/BtapCalo");

    if (response.statusCode == 200) {
      final List data = jsonDecode(jsonEncode(response.data));
      List<ExcercisesModel> listWorkoutData =
          data.map((f) => ExcercisesModel.fromJson(f)).toList();
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
          future: _getExcercises(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return CircularPercentIndicator(radius: 30);
            }
            return ListView.builder(
                itemBuilder: (BuildContext context, int idBaiTap) {
              return ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Colors.blue),
                              margin: EdgeInsets.only(top: 33, left: 26),
                              width: 99,
                              height: 99,
                              child:
                                  Image.asset(snapshot.data[idBaiTap].hinhBT)),
                          Container(
                            width: 39,
                            height: 39,
                            margin: EdgeInsets.only(top: 60, left: 60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: Icon(Icons.play_arrow),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 19, top: 20),
                        child: Column(
                          children: <Widget>[
                            Text(
                              snapshot.data[idBaiTap].thongTinBaiTap,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(snapshot.data[idBaiTap].tenBaiTap,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Container(
                              margin: EdgeInsets.only(top: 13),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: Color(0xffECECEC)),
                                    width: 152,
                                    height: 12,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: Colors.blue),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              );
            });
          },
        ),
      ),
    );
  }
}
