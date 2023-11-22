import 'package:flutter/material.dart';

class Projects {
  final String title;
  final String startDate;
  final String endDate;
  final List<String> bulletPoints;
  final Color color;
  final Uri? link;
  final Uri? webLink;
  Projects({
    required this.color,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.bulletPoints,
    this.link,
    this.webLink,
  });
}
