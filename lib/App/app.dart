import 'package:fitandheal/App/Screen/BeginScreen.dart';
import 'package:fitandheal/App/Screen/test.dart';
import 'package:fitandheal/App/Widgets/ApiItem/ExcercisesItem1.dart';
import 'package:fitandheal/App/Widgets/Excercises_item.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BeginScreen(),
    );
  }
}
