import 'package:fitandheal/App/src/Screen/StartWorkout/StartEx3.dart';
import 'package:fitandheal/App/src/Widgets/BackItem.dart';
import 'package:fitandheal/App/src/Widgets/ClassEx/ClassItem.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Break2 extends StatefulWidget {
  @override
  _Break2State createState() => _Break2State();
}

class _Break2State extends State<Break2> with TickerProviderStateMixin {
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
      duration: Duration(seconds: 10),
    );

    // ..addStatusListener((status) {
    //     if (controller.status == AnimationStatus.dismissed) {
    //       setState(() => isPlaying = false);
    //     }

    //     print(status);
    //   })
  }

  void call() {
    method();
  }

  method() {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => StartEx3()));
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClassItem(),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 20, left: 40),
                    child: Text(
                      'Time for a break',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                BackItem()
              ],
            ),
            Container(
              width: 200,
              height: 300,
              margin: EdgeInsets.only(top: 30),
              child: Image.asset('break.jpeg'),
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
                        margin: EdgeInsets.only(top: 78.5, left: 80),
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
                        margin: EdgeInsets.only(top: 60, left: 60),
                        width: 240,
                        height: 240,
                        child: Image.asset('zone1.png'),
                      ),
                      Container(
                        width: 144,
                        height: 144,
                        margin: EdgeInsets.only(top: 105, left: 108),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 110, right: 10),
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
