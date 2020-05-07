import 'package:fitandheal/App/Screen/UsernameScreen.dart';
import 'package:flutter/material.dart';

class BeginScreen extends StatefulWidget {
  @override
  _BeginScreenState createState() => _BeginScreenState();
}

class _BeginScreenState extends State<BeginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          width: 68,
          height: 68,
          margin: EdgeInsets.only(top: 65, left: 175, right: 152),
          child: Column(
            children: <Widget>[Image.asset('Logo.png')],
          ),
        ),
        Container(
          width: 280,
          height: 76,
          margin: EdgeInsets.only(top: 18),
          child: Text('Welcome to Fitness & Health',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              )),
        ),
        Container(
          width: 280,
          height: 48,
          margin: EdgeInsets.only(top: 16),
          child: Text('Chưa nghĩ ra chỗ này viết cái gì. Bèn Ben Bén ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 7),
          child: Image.asset('img-illustration1.png'),
        ),
        Container(
          child: Image.asset('Indicator.png'),
        ),
        Container(
          width: 331,
          height: 50,
          margin: EdgeInsets.only(top: 43),
          child: RaisedButton(
            onPressed: onClicked1,
            color: Color(0xff8B63E6).withOpacity(.9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.5)),
            child: Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: 226,
          height: 19,
          margin: EdgeInsets.only(top: 14),
          child: Row(
            children: <Widget>[
              Text(
                'Already have account?',
                style: TextStyle(color: Colors.grey),
              ),
              Text(' Sign In', style: TextStyle(color: Color(0xff8B63E6)))
            ],
          ),
        )
      ],
    ));
  }

  void onClicked1() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => UsernameScreen()));
  }
}
