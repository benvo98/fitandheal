import 'package:fitandheal/App/src/Screen/BeginScreen.dart';
import 'package:fitandheal/App/src/Screen/StartWorkout/StartworkScreen.dart';

import 'package:fitandheal/App/src/Widgets/ClassEx/ClassItem.dart';
import 'package:fitandheal/App/src/blocs/auth_bloc.dart';
import 'package:fitandheal/App/src/resource/login_page1.dart';
import 'package:flutter/material.dart';

import 'App/app.dart';

void main() {
  runApp(MyApp(
      new AuthBloc(),
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BeginScreen(),
      )));
}
