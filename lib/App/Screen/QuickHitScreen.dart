import 'package:fitandheal/App/Screen/StartworkScreen.dart';

import 'package:fitandheal/App/Widgets/RoundItem/Round1_item.dart';
import 'package:fitandheal/App/Widgets/RoundItem/Round2_item.dart';
import 'package:fitandheal/app/style/theme.dart' as Style;

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class QuickHitScreen extends StatefulWidget {
  @override
  _QuickHitScreenState createState() => _QuickHitScreenState();
}

class _QuickHitScreenState extends State<QuickHitScreen> {
  final List<String> roundtitle = [
    'Round 1 complete',
    'Round 2 complete',
    'Round 3 complete',
  ];
  final List<String> excercises = [
    '4 Excercises',
    '3 Excercises',
    '5 Excercises',
  ];

  final List<double> widths = [
    150,
    200,
    300,
  ];

  final List<String> percent = ['40%', '60%', '93%'];

  int _index = 0;
  String videoURL = "https://www.youtube.com/watch?v=2MZSjB1WLFg";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 79, left: 25),
                  child: Text(
                    'Quick HIT',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            /*Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 325,
                      height: 227,
                      margin: EdgeInsets.only(left: 25, top: 22),
                      child: Image.asset('video.png'),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 155, top: 83),
                        child: Image.asset('PlayBtn.png')),
                    Container(
                      margin: EdgeInsets.only(left: 66, top: 160),
                      child: Image.asset('iftime.png'),
                    )
                  ],
                ),
              ],
            ),*/
            Container(
              margin: EdgeInsets.all(10),
              width: 360,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(32)),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 360,
                      height: 50,
                      margin: EdgeInsets.only(top: 23, left: 25),
                      child: RaisedButton(
                        onPressed: onClicked,
                        color: Color(0xff8B63E6).withOpacity(.9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.5)),
                        child: Text(
                          'Start Workout',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 42,
                      height: 42,
                      margin: EdgeInsets.only(top: 27, left: 340),
                      child: Image.asset('PlayBtn.png'),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 33),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 80.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 0;
                          return Round1();
                        });
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'ROUND 1',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      _index == 0 ? Colors.black : Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 1;
                          return Round2();
                        });
                      },
                      child: Container(
                        child: Text(
                          'ROUND 2',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: _index == 1 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 2;
                      });
                    },
                    child: Container(
                      child: Text(
                        'ROUND 3',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: _index == 2 ? Colors.black : Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 29),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        roundtitle[_index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          excercises[_index],
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: Text(
                          percent[_index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff1EDC6A)),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12, right: 70),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Color(0xffECECEC)),
                          width: 400,
                          height: 17,
                        ),
                        Container(
                          width: widths[_index],
                          height: 17,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Color(0xff1EDC6A)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Style.Colors.mainColor.withOpacity(1.0),
                    Style.Colors.mainColor.withOpacity(0.0)
                  ],
                  stops: [0.0, 0.9],
                ),
              ),
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
                        child: Image.asset('ex1.png')),
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 20),
                      child: Image.asset('playbtn2.png'),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 19, top: 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '30 Sec',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('Excercise 2',
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
                        child: Image.asset('ex1.png')),
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 20),
                      child: Image.asset('playbtn2.png'),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 19, top: 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '30 Sec',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('Excercise 3',
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StartWorkScreen()));
  }
}
