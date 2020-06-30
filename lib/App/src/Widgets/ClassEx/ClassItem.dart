import 'package:fitandheal/App/src/Screen/StartWorkout/Break.dart';
import 'package:fitandheal/App/src/Screen/StartWorkout/Break2.dart';
import 'package:fitandheal/App/src/Screen/StartWorkout/Break3.dart';
import 'package:fitandheal/App/src/Screen/StartWorkout/Break4.dart';
import 'package:fitandheal/App/src/Screen/StartWorkout/End.dart';
import 'package:fitandheal/App/src/Screen/StartWorkout/StartEx2.dart';
import 'package:fitandheal/App/src/Screen/StartWorkout/StartEx3.dart';
import 'package:fitandheal/App/src/Screen/StartWorkout/StartEx4.dart';
import 'package:fitandheal/App/src/Screen/StartWorkout/StartworkScreen.dart';
import 'package:flutter/material.dart';

class ClassItem extends StatefulWidget {
  @override
  _ClassItemState createState() => _ClassItemState();
}

class _ClassItemState extends State<ClassItem> {
  int _index = 0;
  final List<String> imgEx = [
    'https://media.giphy.com/media/lV8qOjvvvrKZa/giphy.gif',
    'https://miro.medium.com/max/10886/1*DFaRILoVj4jv0AAVb6EmDw.jpeg',
    'https://media3.giphy.com/media/hqCWj0ebspgru/giphy.gif?cid=ecf05e47f478769f87eb8a80541d6bcc944bd319e6c66079&rid=giphy.gif',
    'https://miro.medium.com/max/10886/1*DFaRILoVj4jv0AAVb6EmDw.jpeg',
    'https://media0.giphy.com/media/hix5IS0EkPs3K/giphy.gif?cid=ecf05e47ef4483a8324c8e7cca6367e01aba34eb84576a56&rid=giphy.gif',
    'https://miro.medium.com/max/10886/1*DFaRILoVj4jv0AAVb6EmDw.jpeg',
    'https://media1.giphy.com/media/MDLmZG3XLUby8/giphy.gif?cid=ecf05e47edf44f1090635bec55b8ab5f25fa99b1c7aa0625&rid=giphy.gif',
    'https://i.pinimg.com/originals/25/7d/3a/257d3afd123f2b88a6832067819596ef.gif',
  ];
  List<Widget> listScreen = [
    StartWorkScreen(),
    Break(),
    StartEx2(),
    Break2(),
    StartEx3(),
    Break3(),
    StartEx4(),
    End(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
              child: Wrap(
                children: List.generate(imgEx.length, (_index) {
                  return Container(
                    height: 50,
                    width: 70,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => listScreen[_index]));
                      },
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 50,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.grey.withOpacity(.1)),
                            child: Image.network(imgEx[_index]),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
