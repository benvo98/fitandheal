import 'package:flutter/material.dart';
import 'package:fitandheal/app/style/theme.dart' as Style;

class StartWorkScreen extends StatefulWidget {
  @override
  _StartWorkScreenState createState() => _StartWorkScreenState();
}

class _StartWorkScreenState extends State<StartWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 204.98,
                height: 374.96,
                margin: EdgeInsets.only(top: 133.6, left: 85.1),
                child: Image.asset('girlexcer.png'),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 46.4, left: 86),
            width: 202,
            height: 202,
            child: Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'zone1.png',
                    color: Color(0xff7F36FF),
                  ),
                ),
                Container(
                  width: 144,
                  height: 144,
                  margin: EdgeInsets.only(top: 27, left: 30),
                  child: RaisedButton(
                    onPressed: onClicked,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 68, top: 65),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff7F36FF),
                        offset: Offset(0, -1.0), //(x,y)
                        blurRadius: 15.0,
                      ),
                    ],
                  ),
                  child: Image.asset('PlayBtn.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void onClicked() {}
}
