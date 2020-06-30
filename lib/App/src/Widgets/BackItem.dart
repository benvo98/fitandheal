import 'package:fitandheal/App/src/Screen/WorkoutScreen.dart';
import 'package:fitandheal/App/src/Widgets/BottomBar.dart';
import 'package:flutter/material.dart';

class BackItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 70),
      child: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BottomBar()));
          }),
    );
  }
}
