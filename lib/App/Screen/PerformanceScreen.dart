import 'package:fitandheal/App/Widgets/TabbarGraph_item/Muscles.dart';
import 'package:flutter/material.dart';

class PerformanceScreen extends StatefulWidget {
  @override
  _PerformanceScreenState createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 79),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Performance",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
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
            ),
            Container(
              margin: EdgeInsets.only(right: 20, top: 20),
              width: 500,
              height: 600,
              child: MusclesItem(),
            )
          ],
        ),
      ),
    );
  }
}
