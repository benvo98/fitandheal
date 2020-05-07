import 'package:flutter/material.dart';

class DetailFoodScreen extends StatefulWidget {
  @override
  _DetailFoodScreenState createState() => _DetailFoodScreenState();
}

class _DetailFoodScreenState extends State<DetailFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 79.0, left: 45),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Meal 1',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 27),
                        child: Image.asset('foodimg.png'),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 100, left: 135),
                          child: Image.asset('PlayBtn.png'))
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    width: 210,
                    height: 55,
                    child: Text(
                      'Công thức nấu ăn gà nướng chanh.',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    margin: EdgeInsets.only(top: 40, left: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFC3B74).withOpacity(.1),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            '26',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFC3B74)),
                          ),
                        ),
                        Container(
                          child: Text(
                            'MINS',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFC3B74)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 55),
                      child: Text(
                        'THÀNH PHẦN',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 63),
                      child: Text(
                        'BƯỚC 1',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      child: Text(
                        'BƯỚC 2',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 271,
                      height: 150,
                      child: SingleChildScrollView(
                        child: Text(
                            'Gà nướng chanh ớt thơm lừng. Món ăn có vị chua, cay, mùi thơm quyến rũ và màu vàng nâu hấp dẫn sẽ khiến các thành viên gia đình bạn khó cưỡng lại. Nguyên liệu: 1,5-2 kg thịt gà (nguyên phần đùi, cả xương), 1/4 chén dầu olive, 2 quả chanh tươi, 3 tép tỏi nghiền nát, 1/2 thìa ớt bột, 2 thìa ớt khô miếng, muối và tiêu.'),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30, top: 20),
                width: 324,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff7F36FF),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 41),
                      child: Image.asset('share.png'),
                    ),
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(left: 70),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33),
                          color: Colors.white.withOpacity(.2)),
                      child: Image.asset('heart.png'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      child: Image.asset('bookmark.png'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
