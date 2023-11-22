import 'package:flutter/material.dart';

class Certifications {
  final String title;
  final String issuedBy;
  final String length;
  final String endDate;
  final List<String>? bulletPoints;
  final Color color;
  final String? link;
  Certifications({
    required this.color,
    required this.title,
    required this.issuedBy,
    required this.length,
    required this.endDate,
    this.bulletPoints,
    this.link,
  });
}
