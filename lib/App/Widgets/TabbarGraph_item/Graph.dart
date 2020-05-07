import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GraphItem extends StatefulWidget {
  @override
  _GraphItemState createState() => _GraphItemState();
}

class _GraphItemState extends State<GraphItem> {
  @override
  static var chartsdisplay;
  void initState() {
    setState(() {
      var data = [
        addcharts(
          "12 Tue",
          250,
        ),
        addcharts("13 Wed", 300),
        addcharts("14 Thu", 0),
        addcharts("15 Fri", 0),
        addcharts("16 Sat", 0),
        addcharts("17 Sun", 0),
        addcharts("18 Mon", 0),
      ];
      var series = [
        charts.Series(
          domainFn: (addcharts addcharts, _) => addcharts.label,
          measureFn: (addcharts addcharts, _) => addcharts.value,
          fillColorFn: (addcharts addcharts, _) {
            return (addcharts.label == "13 Wed")
                ? charts.MaterialPalette.green.shadeDefault
                : charts.MaterialPalette.gray.shadeDefault;
          },
          id: 'addcharts',
          data: data,
        ),
      ];

      chartsdisplay = charts.BarChart(
        series,
        animationDuration: Duration(microseconds: 2000),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: chartsdisplay,
      ),
    );
  }
}

class addcharts {
  final String label;
  final int value;
  addcharts(this.label, this.value);
}
