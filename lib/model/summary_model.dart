import 'package:flutter/material.dart';
class SummaryModel {
  final String title;
  final int count;
  final int total;
  final double percent;
  final Color color;

  SummaryModel({
    required this.title,
    required this.count,
    required this.total,
    required this.percent,
    required this.color
  });
}
