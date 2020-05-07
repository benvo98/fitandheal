import 'package:fitandheal/App/Screen/BeginScreen.dart';
import 'package:fitandheal/App/Screen/DetailFood.dart';
import 'package:fitandheal/App/Screen/ExcercisesScreen.dart';
import 'package:fitandheal/App/Screen/HomeScreen.dart';
import 'package:fitandheal/App/Screen/MenuFoodScreen.dart';
import 'package:fitandheal/App/Screen/MenuScreen.dart';
import 'package:fitandheal/App/Screen/PasswordScreen.dart';
import 'package:fitandheal/App/Screen/PerformanceScreen.dart';
import 'package:fitandheal/App/Screen/QuickHitScreen.dart';
import 'package:fitandheal/App/Screen/StartworkScreen.dart';
import 'package:fitandheal/App/Screen/WorkoutExcerScreen.dart';
import 'package:fitandheal/App/Screen/WorkoutScreen.dart';
import 'package:fitandheal/App/Widgets/BottomBar.dart';
import 'package:fitandheal/App/Widgets/Excercises_item.dart';
import 'package:fitandheal/App/Widgets/TabbarGraph_item/Graph.dart';
import 'package:fitandheal/App/Widgets/TabbarGraph_item/Muscles.dart';
import 'package:fitandheal/App/Widgets/Workout_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen/UsernameScreen.dart';

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
