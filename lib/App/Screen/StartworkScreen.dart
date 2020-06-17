import 'package:fitandheal/App/Screen/QuickHitScreen.dart';
import 'package:fitandheal/App/Screen/StartEx2.dart';
import 'package:flutter/material.dart';
import 'package:fitandheal/app/style/theme.dart' as Style;
import 'dart:math' as math;

class StartWorkScreen extends StatefulWidget {
  @override
  _StartWorkScreenState createState() => _StartWorkScreenState();
}

class _StartWorkScreenState extends State<StartWorkScreen>
    with TickerProviderStateMixin {
  AnimationController controller;

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    );
  }

  void call() {
    method();
  }

  method() {
    Future.delayed(Duration(seconds: 30), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => StartEx2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 330),
                  child: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StartEx2()));
                      }),
                ),
              ],
            ),
            Container(
                child: Text(
              'Bài tập 1',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            Container(
              width: 200,
              height: 300,
              margin: EdgeInsets.only(top: 100),
              child: Image.network(
                  'https://media.giphy.com/media/lV8qOjvvvrKZa/giphy.gif'),
            ),
            Container(
              child: AnimatedBuilder(
                  animation: controller,
                  builder: (BuildContext context, Widget child) {
                    return Text(
                      timerString,
                      style: TextStyle(fontSize: 30),
                    );
                  }),
            ),
            Expanded(
              child: Align(
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 78.5, left: 100),
                        width: 200,
                        height: 200,
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: AnimatedBuilder(
                                  animation: controller,
                                  builder:
                                      (BuildContext context, Widget child) {
                                    return CustomPaint(
                                        painter: TimerPainter(
                                      animation: controller,
                                      backgroundColor: Colors.white,
                                      color: Color(0xff7F36FF),
                                    ));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 60, left: 80),
                        width: 240,
                        height: 240,
                        child: Image.asset('zone1.png'),
                      ),
                      Container(
                        width: 144,
                        height: 144,
                        margin: EdgeInsets.only(top: 105, left: 128),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 75, left: 10),
                        child: Align(
                          alignment: FractionalOffset.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 125.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    FloatingActionButton(
                                      onPressed: () {
                                        call();
                                        if (controller.isAnimating) {
                                          controller.stop(canceled: true);
                                        } else {
                                          controller.reverse(
                                              from: controller.value == 0.0
                                                  ? 1.0
                                                  : controller.value);
                                        }
                                        setState(() {});
                                      },
                                      backgroundColor: Color(0xff7F36FF),
                                      child: AnimatedBuilder(
                                        animation: controller,
                                        builder: (BuildContext context,
                                            Widget child) {
                                          return Icon(controller.isAnimating
                                              ? Icons.pause
                                              : Icons.play_arrow);
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimerPainter extends CustomPainter {
  TimerPainter({
    this.animation,
    this.backgroundColor,
    this.color,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor, color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 14.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * math.pi;
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(TimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}
