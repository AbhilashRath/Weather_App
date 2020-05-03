import 'package:flutter/material.dart';
class DailyData {
  DailyData(this.time, this.temprature,color):color=color??Color(0xFF10103B);

  final String time;
  final double temprature;
  Color color;
}
