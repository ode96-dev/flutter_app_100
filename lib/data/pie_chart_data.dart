import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_100/const/constant.dart';

class ChartData {
  final pieChartDataSelection = [
    PieChartSectionData(
      color: primaryColor,
      value: 25.0,
      showTitle: false,
      radius: 25.0,
    ),
    PieChartSectionData(
      color: Colors.red,
      value: 20.0,
      showTitle: false,
      radius: 22.0,
    ),
    PieChartSectionData(
      color: Color.fromARGB(255, 200, 244, 54),
      value: 10.0,
      showTitle: false,
      radius: 19.0,
    ),
    PieChartSectionData(
      color: Colors.blue,
      value: 15.0,
      showTitle: false,
      radius: 16.0,
    ),
    PieChartSectionData(
      color: primaryColor.withOpacity(0.1),
      value: 15.0,
      showTitle: false,
      radius: 16.0,
    )
  ];
}
