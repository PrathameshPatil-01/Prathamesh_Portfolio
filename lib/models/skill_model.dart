import 'package:flutter/material.dart';

class SkillsModel {
  final String skillName;
  final Color colorS;
  final String? assetPath;
  final String? hrefPath;

  SkillsModel({
    required this.skillName,
    required this.colorS,
    this.assetPath,
    this.hrefPath,
  });
}
