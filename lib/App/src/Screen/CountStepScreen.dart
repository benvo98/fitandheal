import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pedometer/pedometer.dart';

class CountStepScreen extends StatefulWidget {
  @override
  _CountStepScreenState createState() => _CountStepScreenState();
}

class _CountStepScreenState extends State<CountStepScreen> {
  String muestrePasos = " ";
  String _km = "Unknown";
  String _calories = "Unknown";
  Pedometer _pedometer;
  String _stepCountValue = '?';
  StreamSubscription<int> _subscription;

  double _numerox; //numero pasos
  double _convert;
  double _kmx;
  double burnedx;
  double _porciento;
  // double percent=0.1;

  @override
  void initState() {
    super.initState();
    //initPlatformState();
    setUpPedometer();
  }

  void onData(int stepCountValue) {
    print(stepCountValue);
  }

  //inicia codigo pedometer
  void setUpPedometer() {
    Pedometer pedometer = Pedometer();
    _subscription = pedometer.pedometerStream.listen(_onData,
        onError: _onError, onDone: _onDone, cancelOnError: true);
  }

  void _onData(int stepCountValue) async {
    // print(stepCountValue); //impresion numero pasos por consola
    setState(() {
      _stepCountValue = "$stepCountValue";

      // print(_stepCountValue);
    });

    var dist = stepCountValue; //pasamos el entero a una variable llamada dist
    double y = (dist + .0); //lo convertimos a double una forma de varias

    setState(() {
      _numerox =
          y; //lo pasamos a un estado para ser capturado ya convertido a double
    });

    var long3 = (_numerox);
    long3 = num.parse(y.toStringAsFixed(2));
    var long4 = (long3 / 10000);

    int decimals = 1;
    int fac = pow(10, decimals);
    double d = long4;
    d = (d * fac).round() / fac;
    print("d: $d");

    getDistanceRun(_numerox);

    setState(() {
      _convert = d;
      print(_convert);
    });
  }

  void reset() {
    setState(() {
      int stepCountValue = 0;
      stepCountValue = 0;
      _stepCountValue = "$stepCountValue";
    });
  }

  void _onDone() => print("Finished pedometer tracking");

  void _onError(error) {
    print("Flutter Pedometer Error: $error");
  }

  //function to determine the distance run in kilometers using number of steps
  void getDistanceRun(double _numerox) {
    var distance = ((_numerox * 78) / 100000);
    distance = num.parse(distance.toStringAsFixed(2)); //dos decimales
    var distancekmx = distance * 34;
    distancekmx = num.parse(distancekmx.toStringAsFixed(2));
    //print(distance.runtimeType);
    setState(() {
      _km = "$distance";
      //print(_km);
    });
    setState(() {
      _kmx = num.parse(distancekmx.toStringAsFixed(2));
    });
  }

  //function to determine the calories burned in kilometers using number of steps
  void getBurnedRun() {
    setState(() {
      var calories = _kmx; //dos decimales
      _calories = "$calories";
      //print(_calories);
    });
  }

  //fin codigo pedometer

  @override
  Widget build(BuildContext context) {
    //print(_stepCountValue);
    getBurnedRun();
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100.0),
            child: CircularPercentIndicator(
              radius: 200.0,
              lineWidth: 13.0,
              animation: true,
              center: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 75.0, bottom: 50),
                      child: Icon(
                        FontAwesomeIcons.walking,
                        size: 80.0,
                        color: Color(0xff7F36FF),
                      ),
                    ),
                  ],
                ),
              ),
              percent: _convert,
              footer: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Số Bước ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xff7F36FF)),
                    ),
                    Text(
                      '$_stepCountValue',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 70.0,
                          color: Color(0xff7F36FF)),
                    ),
                  ],
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Color(0xff7F36FF),
            ),
          ),
          Divider(
            height: 5.0,
          ),
          Container(
            width: 80,
            height: 100,
            padding: EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
            color: Colors.transparent,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    child: Image.asset('street.png'),
                  ),
                ),
                VerticalDivider(
                  width: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    child: Image.asset('fire.png'),
                  ),
                ),
                VerticalDivider(
                  width: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    child: Image.asset('step.png'),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 2,
          ),
          Container(
            padding: EdgeInsets.only(top: 2.0),
            width: 150,
            height: 30,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 40.0, right: 30),
                  child: Container(
                    child: Text(
                      "$_km Km",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Color(0xff7F36FF)),
                    ),
                  ),
                ),
                VerticalDivider(
                  width: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(right: 30, left: 20),
                  child: Container(
                    child: Text(
                      "$_calories Calo",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.red),
                    ),
                  ),
                ),
                VerticalDivider(
                  width: 5.0,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    child: Text(
                      "$_stepCountValue Bước",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
