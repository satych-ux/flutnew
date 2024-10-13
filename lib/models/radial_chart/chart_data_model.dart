import 'package:flutter/material.dart';

class ChartData {
  ChartData(
      this.x, this.y, this.color, this.radiusString, this.internalRadiusString);
  final String x;
  final double y;
  final Color color;
  final String radiusString;
  final String internalRadiusString;
}
