import 'package:fitandheal/App/src/Widgets/BottomBar.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xffF4F6FA),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 68,
                  height: 68,
                  child: Image.asset('Logo.png'),
                ),
                Container(
                  width: 331,
                  height: 50,
                  margin: EdgeInsets.only(top: 100),
                  child: RaisedButton(
                    onPressed: onClicked1,
                    color: Color(0xff8B63E6).withOpacity(.9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23.5)),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void onClicked1() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BottomBar()));
  }
}
