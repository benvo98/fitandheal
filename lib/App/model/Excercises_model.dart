import 'package:fitandheal/App/style/theme.dart';
import 'package:flutter/cupertino.dart';

class ListExcercisesItem {
  final String imageUrl;
  final String title;
  final String text;
  final Color colors;
  final Color colors2;
  final double witdhs;
  ListExcercisesItem(
      {this.imageUrl,
      this.title,
      this.text,
      this.colors,
      this.colors2,
      this.witdhs});
}

final List<ListExcercisesItem> excercisesItem = [
  ListExcercisesItem(
      imageUrl: 'https://media.giphy.com/media/lV8qOjvvvrKZa/giphy.gif',
      title: 'Bài tập 1',
      text: '30 Sec',
      colors: Color(0xffFFE7D7),
      colors2: Color(0xffFFBE92),
      witdhs: 16),
  ListExcercisesItem(
      imageUrl:
          'https://media3.giphy.com/media/hqCWj0ebspgru/giphy.gif?cid=ecf05e47f478769f87eb8a80541d6bcc944bd319e6c66079&rid=giphy.gif',
      title: 'Bài tập 2',
      text: '30 Sec',
      colors: Color(0xffC5F2FF),
      colors2: Color(0xff83E0FB),
      witdhs: 30),
  ListExcercisesItem(
      imageUrl:
          'https://media0.giphy.com/media/hix5IS0EkPs3K/giphy.gif?cid=ecf05e47ef4483a8324c8e7cca6367e01aba34eb84576a56&rid=giphy.gif',
      title: 'Bài tập 3',
      text: '30 Sec',
      colors: Color(0xffFFD8F1),
      colors2: Color(0xffFFA1DD),
      witdhs: 45),
  ListExcercisesItem(
      imageUrl:
          'https://media1.giphy.com/media/MDLmZG3XLUby8/giphy.gif?cid=ecf05e47edf44f1090635bec55b8ab5f25fa99b1c7aa0625&rid=giphy.gif',
      title: 'Bài tập 4',
      text: '30 Sec',
      colors: Color(0xffBEE4B3),
      colors2: Color(0xffAFEC9D),
      witdhs: 60),
];
