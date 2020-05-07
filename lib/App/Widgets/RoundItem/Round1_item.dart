import 'package:flutter/material.dart';

class Round1 extends StatefulWidget {
  @override
  _Round1State createState() => _Round1State();
}

class _Round1State extends State<Round1> {
  int _index = 0;
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
                  'Round 1 completed',
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
