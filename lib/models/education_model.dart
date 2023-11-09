import 'package:flutter/material.dart';

class Educations {
  final String title;
  final String name;
  final String startDate;
  final String endDate;
  final List<String> bulletPoints;
  final String location;
  final Color color;
  Educations({
    required this.color,
    required this.location,
    required this.title,
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.bulletPoints,
  });
}
