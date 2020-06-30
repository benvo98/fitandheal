import 'package:fitandheal/App/src/Widgets/TabbarGraph_item/Graph.dart';
import 'package:flutter/material.dart';

class MusclesItem extends StatelessWidget {
  List<Widget> containers = [
    Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        children: <Widget>[
          /* Row(
            children: <Widget>[
              Text(
                "Performance",
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 115.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffFC3B74)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 12),
                      child: Image.asset("calendar.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),*/
          Padding(
            padding: const EdgeInsets.only(top: 11.0),
            child: Row(
              children: <Widget>[
                Text(
                  'November',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45.4),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      child: Image.asset('Shape.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 97),
                      child: Image.asset('Bodymass.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 118.6, left: 112.9),
                      child: Image.asset(
                        'Ellipse340.png',
                        color: Colors.grey.withOpacity(.5),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 51),
                      child: Image.asset('Graph.png'),
                    ),
                    Container(
                      width: 19,
                      height: 19,
                      margin: EdgeInsets.only(top: 132.6, left: 126.9),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff1EDC6A)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 13.1),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'Body.png',
                        color: Colors.grey.withOpacity(.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: Text(
                        "12 Tue",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 43.8),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'Body.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Text(
                          "13 Wed",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 43.8),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'Body.png',
                          color: Colors.grey.withOpacity(.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Text(
                          "14 Thu",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 43.8),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'Body.png',
                          color: Colors.grey.withOpacity(.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Text(
                          "15 Fri",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 43.8),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'Body.png',
                          color: Colors.grey.withOpacity(.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Text(
                          "16 Sat",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20, left: 10),
                width: 95,
                height: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color(0xff7F36FF)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25),
                  child: Text(
                    'Week',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 95,
                height: 38,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 25),
                  child: Text(
                    'Month',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: 95,
                height: 38,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 25),
                  child: Text(
                    '3 Month',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 366,
                  height: 450,
                  child: GraphItem(),
                )
              ],
            ),
          )
        ],
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            child: AppBar(
              backgroundColor: Colors.white.withOpacity(1),
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  child: Text(
                    'Muscles',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    'Graph',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )
              ]),
            ),
            preferredSize: Size.fromHeight(50)),
        body: TabBarView(children: containers),
      ),
    );
  }
}
