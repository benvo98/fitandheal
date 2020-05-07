import 'package:fitandheal/App/Widgets/BottomBar.dart';
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
                  margin: EdgeInsets.only(top: 54),
                  width: 231,
                  height: 60,
                  child: Text(
                    'Now let’s set your password',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 332,
                  height: 80,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
                  child: Card(
                    elevation: 10,
                    margin: EdgeInsets.only(top: 28),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      )),
                    ),
                  ),
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
