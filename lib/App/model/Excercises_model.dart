import 'package:fitandheal/App/style/theme.dart';
import 'package:flutter/cupertino.dart';

class ListExcercisesItem {
  final String imageUrl;
  final String title;
  final String text;
  final Color colors;
  final Color colors2;
  ListExcercisesItem(
      {this.imageUrl, this.title, this.text, this.colors, this.colors2});
}

final List<ListExcercisesItem> excercisesItem = [
  ListExcercisesItem(
      imageUrl: 'ex1.png',
      title: 'Excercises 1',
      text: '30 Sec',
      colors: Color(0xffFFE7D7),
      colors2: Color(0xffFFBE92)),
  ListExcercisesItem(
      imageUrl: 'ex2.png',
      title: 'Excercises 2',
      text: '30 Sec',
      colors: Color(0xffC5F2FF),
      colors2: Color(0xff83E0FB)),
  ListExcercisesItem(
      imageUrl: 'ex3.png',
      title: 'Excercises 3',
      text: '30 Sec',
      colors: Color(0xffFFD8F1),
      colors2: Color(0xffFFA1DD)),
  ListExcercisesItem(
      imageUrl: 'ex4.png',
      title: 'Excercises 4',
      text: '30 Sec',
      colors: Color(0xffBEE4B3),
      colors2: Color(0xffAFEC9D)),
];
