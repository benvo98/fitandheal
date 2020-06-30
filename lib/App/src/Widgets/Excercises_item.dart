import 'package:fitandheal/App/model/Excercises_model.dart';
import 'package:flutter/material.dart';
import 'package:fitandheal/App/model/Excercises_model.dart';

class ExcercisesItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final Color colors;
  final Color colors2;
  final double witdhs;

  ExcercisesItem(
      {this.imageUrl,
      this.title,
      this.text,
      this.colors,
      this.colors2,
      this.witdhs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: colors),
                      margin: EdgeInsets.only(top: 33, left: 26),
                      width: 99,
                      height: 99,
                      child: Image.network(imageUrl)),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 19, top: 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      text,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(title,
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
                            width: witdhs,
                            height: 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: colors2),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
