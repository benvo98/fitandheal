import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 79, left: 25),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Settings',
                style: TextStyle(fontSize: 30),
              ),
              Container(
                margin: EdgeInsets.only(left: 150),
                width: 98,
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Color(0xff1EDC6A)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0, top: 10),
                  child: Text(
                    'Go Pro',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 42),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffFC3B74)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, top: 8),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 2),
                        child: Text(
                          "F",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFC3B74)),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Stay Connect with fitness",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 96),
                  child: Image.asset("next.png"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 42),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff7F36FF)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, top: 8),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset('settings.png'),
                    ),
                  ],
                ),
                Container(
                  width: 202,
                  height: 21,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 96),
                  child: Image.asset("next.png"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 42),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffFFE65F)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, top: 8),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 2),
                        child: Text(
                          "F",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFE65F)),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 202,
                  height: 21,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Subscriptions",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 96),
                  child: Image.asset("next.png"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 42),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff1EDC6A)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, top: 8),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset('archive.png'),
                    ),
                  ],
                ),
                Container(
                  width: 202,
                  height: 21,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Restore Purchase",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 96),
                  child: Image.asset("next.png"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 42),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff1DE0FF)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, top: 8),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset('star.png'),
                    ),
                  ],
                ),
                Container(
                  width: 202,
                  height: 21,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Rate App",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 96),
                  child: Image.asset("next.png"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 42),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffF940C2)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, top: 8),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset('life.png'),
                    ),
                  ],
                ),
                Container(
                  width: 202,
                  height: 21,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Support",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 96),
                  child: Image.asset("next.png"),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
