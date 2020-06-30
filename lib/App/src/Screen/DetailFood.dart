import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailFoodScreen extends StatefulWidget {
  @override
  _DetailFoodScreenState createState() => _DetailFoodScreenState();
}

class _DetailFoodScreenState extends State<DetailFoodScreen> {
  int _index = 0;

  String videoURL = "https://www.youtube.com/watch?v=QLtoyXbRquM";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));

    super.initState();
  }

  List<String> text = [
    'Gà nướng chanh ớt thơm lừng. Món ăn có vị chua, cay, mùi thơm quyến rũ và màu vàng nâu hấp dẫn sẽ khiến các thành viên gia đình bạn khó cưỡng lại. Nguyên liệu: 1,5-2 kg thịt gà (nguyên phần đùi, cả xương), 1/4 chén dầu olive, 2 quả chanh tươi, 3 tép tỏi nghiền nát, 1/2 thìa ớt bột, 2 thìa ớt khô miếng, muối và tiêu.',
    'Gà làm sạch, chẻ đôi vì gà lớn không lọt nồi, còn nếu gà nhỏ cứ để nguyên cho ngọt nhé. Lá chanh, sả, ớt cắt nhỏ, giã chung với muối, đường, bột ngọt trộn với dầu ăn',
    'Xát lên gà, ướp 20p. Cho vào nồi cùng vài củ sả nguyên đập dập. Nướng 170°-30p. Lật mặt nướng thêm 170°-10p là hoàn thành.',
  ];

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
                      'Bữa ăn 1',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 40, top: 10),
                width: 360,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(32)),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                      ),
                    ],
                  ),
                ),
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
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 33),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 0;
                          });
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Thành Phần',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: _index == 0
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 1;
                          });
                        },
                        child: Container(
                          child: Text(
                            'Bước 1',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: _index == 1 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 2;
                        });
                      },
                      child: Container(
                        child: Text(
                          'Bước 2',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: _index == 2 ? Colors.black : Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pinkAccent.withOpacity(.1),
                ),
                margin: EdgeInsets.only(top: 20, right: 40),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      width: 271,
                      height: 200,
                      child: SingleChildScrollView(
                        child: Text(
                          text[_index],
                        ),
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
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            Icon(Icons.favorite, color: Colors.red);
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      child: Image.asset(
                        'bookmark.png',
                      ),
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
