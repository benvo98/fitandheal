import 'package:fitandheal/App/src/Screen/CountStepScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class WorkExScreen extends StatefulWidget {
  @override
  _WorkExScrState createState() => _WorkExScrState();
}

class _WorkExScrState extends State<WorkExScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 42, top: 25),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 77),
              width: 246,
              height: 62,
              child: Text(
                'Chào mừng bạn đến với chế độ đi bộ.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff7F36FF),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: CircularPercentIndicator(
                radius: 200.0,
                lineWidth: 13.0,
                animation: true,
                center: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 75.0),
                            child: Image.asset('shoes.png'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        '10,000',
                        style: TextStyle(fontSize: 28),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 246,
              height: 62,
              child: Text(
                'Số bước mục tiêu 10,000 bước.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff7F36FF),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              width: 331,
              height: 50,
              child: RaisedButton(
                onPressed: onClicked,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.5)),
                color: Color(0xff7F36FF),
                child: Text(
                  'Bắt Đầu',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  void onClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CountStepScreen()));
  }
}
