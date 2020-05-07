import 'package:fitandheal/App/Screen/QuickHitScreen.dart';
import 'package:flutter/material.dart';

class WorkExScreen extends StatefulWidget {
  @override
  _WorkExScrState createState() => _WorkExScrState();
}

class _WorkExScrState extends State<WorkExScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 79, left: 25),
                      child: Text(
                        'Workouts',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                        width: 42,
                        height: 42,
                        margin: EdgeInsets.only(top: 85, left: 170),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff1EDC6A)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: Color(0xffFFE7D7).withOpacity(1)),
                          margin: EdgeInsets.only(top: 33, left: 26),
                          width: 99,
                          height: 99,
                          child: Image.asset('ex1.png')),
                      GestureDetector(
                        onTap: onClicked,
                        child: Container(
                          margin: EdgeInsets.only(top: 25, left: 20),
                          child: Image.asset('playbtn2.png'),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 19, top: 20),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Excercise 1',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18),
                            ),
                            Image.asset(
                              'iconif.png',
                            ),
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
                                        color: Color(0xffFFBE92)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Image.asset('iconper.png')
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: Color(0xffC5F2FF).withOpacity(1)),
                          margin: EdgeInsets.only(top: 33, left: 26),
                          width: 99,
                          height: 99,
                          child: Image.asset('ex2.png')),
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 20),
                        child: Image.asset('playbtn2.png'),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 19, top: 20),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Excercise 2',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18),
                            ),
                            Image.asset(
                              'iconif.png',
                            ),
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
                                    width: 81,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: Color(0xff83E0FB)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Image.asset('iconper.png')
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: Color(0xffFFD8F1).withOpacity(1)),
                          margin: EdgeInsets.only(top: 33, left: 26),
                          width: 99,
                          height: 99,
                          child: Image.asset('ex3.png')),
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 20),
                        child: Image.asset('playbtn2.png'),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 19, top: 20),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Excercise 3',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18),
                            ),
                            Image.asset(
                              'iconif.png',
                            ),
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
                                    width: 27,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: Color(0xffFFA1DD)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Image.asset('iconper.png')
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: Color(0xffBEE4B3).withOpacity(1)),
                          margin: EdgeInsets.only(top: 33, left: 26),
                          width: 99,
                          height: 99,
                          child: Image.asset('ex4.png')),
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 20),
                        child: Image.asset('playbtn2.png'),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 19, top: 20),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Excercise 4',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18),
                            ),
                            Image.asset(
                              'iconif.png',
                            ),
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
                                    width: 87,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: Color(0xffAFEC9D)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Image.asset('iconper.png')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => QuickHitScreen()));
  }
}
