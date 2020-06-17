import 'package:fitandheal/App/Screen/PasswordScreen.dart';
import 'package:fitandheal/App/Widgets/BottomBar.dart';
import 'package:flutter/material.dart';

class UsernameScreen extends StatefulWidget {
  @override
  _UsernameScreenState createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xffF4F6FA),
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 90, left: 200),
                  child: Image.asset('Group.png'),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 130),
                          width: 202,
                          height: 180,
                          child: Text(
                            "You're Alsmost There",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 47,
                                fontWeight: FontWeight.w900,
                                fontFamily: "SF Pro Display"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      width: 325,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 21),
                      width: 325,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 23),
                      width: 331,
                      height: 50,
                      child: RaisedButton(
                        onPressed: onClicked1,
                        color: Color(0xff8B63E6).withOpacity(.9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.5)),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
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
