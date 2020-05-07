import 'package:fitandheal/App/model/Excercises_model.dart';
import 'package:flutter/material.dart';
import 'package:fitandheal/App/model/Excercises_model.dart';

class ExcercisesItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final Color colors;
  final Color colors2;
  ExcercisesItem(
      {this.imageUrl, this.title, this.text, this.colors, this.colors2});

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
                      child: Image.asset(imageUrl)),
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
                            width: 45,
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
