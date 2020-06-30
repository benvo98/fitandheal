import 'package:flutter/material.dart';

class Round3 extends StatefulWidget {
  @override
  _Round3State createState() => _Round3State();
}

class _Round3State extends State<Round3> {
  int _index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, top: 29),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Round 3 completed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    '(4 Excercises)',
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.4)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 68.0),
                  child: Text(
                    '60%',
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
                    width: 324,
                    height: 17,
                  ),
                  Container(
                    width: 199,
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
    );
  }
}
