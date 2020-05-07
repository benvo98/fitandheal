import 'package:fitandheal/App/Screen/DetailFood.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuFoodScreen extends StatefulWidget {
  @override
  _MenuFoodScreenState createState() => _MenuFoodScreenState();
}

class _MenuFoodScreenState extends State<MenuFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 79, left: 25),
              child: Text(
                'Diet & Nutrition',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 18, left: 25),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Day 1',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro Display'),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 230),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'View all',
                          style: TextStyle(
                              fontSize: 16, fontFamily: 'SF Pro Display'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 21),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: onClicked,
                    child: Container(
                      width: 132,
                      height: 206,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color(0xffF1C800).withOpacity(.1)),
                      margin: EdgeInsets.only(left: 25),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                child: Image.asset('chicken.png')),
                            Container(
                              margin: EdgeInsets.only(top: 18),
                              child: Text(
                                'Meal 1',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              width: 86,
                              height: 38,
                              margin: EdgeInsets.only(top: 18),
                              child: Text(
                                'Grilled lemonchicken',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 132,
                    height: 206,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xffFC3B74).withOpacity(.1)),
                    margin: EdgeInsets.only(left: 25),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              child: Image.asset('carrot.png')),
                          Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Text(
                              'Meal 2',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 86,
                            height: 38,
                            margin: EdgeInsets.only(top: 18),
                            child: Text(
                              'Grilled lemonchicken',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 18, left: 25),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Day 2',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro Display'),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 230),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'View all',
                          style: TextStyle(
                              fontSize: 16, fontFamily: 'SF Pro Display'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 21),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 132,
                    height: 206,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xff1EDC6A).withOpacity(.1)),
                    margin: EdgeInsets.only(left: 25),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              child: Image.asset('lettuce.png')),
                          Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Text(
                              'Meal 1',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 86,
                            height: 38,
                            margin: EdgeInsets.only(top: 18),
                            child: Text(
                              'Grilled lemonchicken',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 132,
                    height: 206,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xff1DE0FF).withOpacity(.1)),
                    margin: EdgeInsets.only(left: 25),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              child: Image.asset('nam.png')),
                          Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Text(
                              'Meal 2',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 86,
                            height: 38,
                            margin: EdgeInsets.only(top: 18),
                            child: Text(
                              'Grilled lemonchicken',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailFoodScreen()));
  }
}
