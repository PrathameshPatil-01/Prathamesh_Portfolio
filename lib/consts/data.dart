import 'package:pp_portfolio/models/app_model.dart';
import 'package:pp_portfolio/models/color_model.dart';
import 'package:pp_portfolio/models/device_model.dart';
import 'package:pp_portfolio/models/education_model.dart';
import 'package:pp_portfolio/screen/miniProjects/education/education.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:pp_portfolio/models/skill_model.dart';
import 'package:pp_portfolio/screen/miniProjects/about/about.dart';
import 'package:pp_portfolio/screen/miniProjects/skills/skills.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(
    device: Devices.android.onePlus8Pro,
    icon: Icons.android,
  ),
  DeviceModel(
    device: Devices.ios.iPhone13,
    icon: Icons.apple,
  ),
  DeviceModel(
    device: Devices.ios.iPad,
    icon: Icons.tablet,
  ),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color.fromARGB(255, 255, 0, 115),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Color.fromARGB(255, 255, 0, 115)],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/cloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Colors.blue, Color.fromARGB(255, 7, 3, 40)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Color.fromARGB(255, 0, 0, 0)],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps = [
  AppModel(
    title: "About",
    color: Colors.white,
    icon: Icons.person,
    screen: const AboutMe(),
  ),
  AppModel(
    title: "Skills",
    color: Colors.white,
    icon: Icons.ac_unit_rounded,
    screen: const Skills(),
  ),
  AppModel(
    title: "Education",
    color: Colors.white,
    icon: FontAwesomeIcons.edge,
    screen: const Education(),
  ),
];

List<AppModel> socialApps = [
  AppModel(
    title: "LinkedIn",
    assetPath: "assets/icons/linkedin.svg",
    color: Colors.white,
    link: linkedIn,
  ),
  AppModel(
    title: "Twitter/X",
    assetPath: "assets/icons/twitter.svg",
    color: Colors.white,
    link: twitter,
  ),
  AppModel(
    title: "GitHub",
    assetPath: "assets/icons/github.svg",
    color: Colors.white,
    link: github,
  ),
];

const String linkedIn =
    "https://www.linkedin.com/in/prathamesh-patil-10-12-2001-pp/";
const String github = "https://github.com/PrathameshPatil-01";
const String twitter = "https://twitter.com/imPBPatil";
const String resumeLink = "";
const String email = "prathameshp800@gmail.com";
String introduction = "Prathamesh Patil ";

List<SkillsModel> skills = [
  SkillsModel(
    skillName: "C++",
    colorS: const Color(0xFF00599C),
    hrefPath: "https://en.wikipedia.org/wiki/C%2B%2B",
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: const Color(0xFF0175C2),
    hrefPath: "https://dart.dev/",
  ),
  SkillsModel(
    skillName: "Python",
    colorS: const Color(0xFFFFD43B),
    hrefPath: "https://www.python.org/",
  ),
  SkillsModel(
    skillName: "JavaScript",
    colorS: const Color(0xFF323330),
    hrefPath: "https://developer.mozilla.org/en-US/docs/Web/JavaScript",
  ),
  SkillsModel(
    skillName: "HTML5",
    colorS: const Color(0xFFE34F26),
    hrefPath: "https://developer.mozilla.org/en-US/docs/Web/HTML",
  ),
  SkillsModel(
    skillName: "CSS3",
    colorS: const Color(0xFF1572B6),
    hrefPath: "https://developer.mozilla.org/en-US/docs/Web/CSS",
  ),
  SkillsModel(
    skillName: "Flutter",
    colorS: const Color(0xFF02569B),
    hrefPath: "https://flutter.dev/",
  ),
  SkillsModel(
    skillName: "Firebase",
    colorS: const Color(0xFFffca28),
    hrefPath: "https://firebase.google.com/",
  ),
  SkillsModel(
    skillName: "Flask",
    colorS: const Color(0xFF000000),
    hrefPath: "https://palletsprojects.com/p/jinja/",
  ),
  SkillsModel(
    skillName: "Jinja",
    colorS: const Color(0xFFB41717),
    hrefPath: "https://jinja.palletsprojects.com/en/3.0.x/",
  ),
  SkillsModel(
    skillName: "Bootstrap",
    colorS: const Color(0xFF563D7C),
    hrefPath: "https://getbootstrap.com/",
  ),
  SkillsModel(
    skillName: "Selenium",
    colorS: const Color(0xFF43B02A),
    hrefPath: "https://www.selenium.dev/",
  ),
  SkillsModel(
    skillName: "Numpy",
    colorS: const Color(0xFF777BB4),
    hrefPath: "https://numpy.org/",
  ),
  SkillsModel(
    skillName: "Pandas",
    colorS: const Color(0xFF2C2D72),
    hrefPath: "https://pandas.pydata.org/",
  ),
  SkillsModel(
    skillName: "Plotly",
    colorS: const Color(0xFF239120),
    hrefPath: "https://plotly.com/",
  ),
  SkillsModel(
    skillName: "SQLAlchemy",
    colorS: const Color(0xFFD71F00),
    hrefPath: "https://www.sqlalchemy.org/",
  ),
  SkillsModel(
    skillName: "OpenCV",
    colorS: const Color(0xFF27338e),
    hrefPath: "https://opencv.org/",
  ),
  SkillsModel(
    skillName: "Express.js",
    colorS: const Color(0xFF000000),
    hrefPath: "https://expressjs.com/",
  ),
  SkillsModel(
    skillName: "Axios",
    colorS: const Color(0xFF671ddf),
    hrefPath: "https://axios-http.com/",
  ),
  SkillsModel(
    skillName: "Node.js",
    colorS: const Color(0xFF339933),
    hrefPath: "https://nodejs.org/",
  ),
  SkillsModel(
    skillName: "npm",
    colorS: const Color(0xFFCB3837),
    hrefPath: "https://www.npmjs.com/",
  ),
  SkillsModel(
    skillName: "Postman",
    colorS: const Color(0xFFFF6C37),
    hrefPath: "https://www.postman.com/",
  ),
  SkillsModel(
    skillName: "React",
    colorS: const Color(0xFF20232A),
    hrefPath: "https://reactjs.org/",
  ),
  SkillsModel(
    skillName: "SQLite",
    colorS: const Color(0xFF07405E),
    hrefPath: "https://www.sqlite.org/",
  ),
  SkillsModel(
    skillName: "MongoDB",
    colorS: const Color(0xFF4EA94B),
    hrefPath: "https://www.mongodb.com/",
  ),
  SkillsModel(
    skillName: "MySQL",
    colorS: const Color(0xFF005C84),
    hrefPath: "https://www.mysql.com/",
  ),
  SkillsModel(
    skillName: "Render",
    colorS: const Color(0xFF46E3B7),
    hrefPath: "https://render.com/",
  ),
  SkillsModel(
    skillName: "Heroku",
    colorS: const Color(0xFF430098),
    hrefPath: "https://www.heroku.com/",
  ),
  SkillsModel(
    skillName: "Netlify",
    colorS: const Color(0xFF00C7B7),
    hrefPath: "https://www.netlify.com/",
  ),
  SkillsModel(
    skillName: "Arduino",
    colorS: const Color(0xFF00878F),
    hrefPath: "https://www.arduino.cc/",
  ),
  SkillsModel(
    skillName: "Raspberry Pi",
    colorS: const Color(0xFFA22846),
    hrefPath: "https://www.raspberrypi.org/",
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "Marathi", colorS: Colors.orange),
  SkillsModel(skillName: "Hindi", colorS: Colors.black),
  SkillsModel(
      skillName: "English", colorS: const Color.fromARGB(255, 255, 0, 0)),
];

final List<Educations> education = [
  Educations(
    color: Colors.red,
    location: "Pune,Maharashtra,India",
    title: 'Electronics and Telecommunications Engineering',
    name: 'Dr. D. Y. Patil College of Engineering, Akurdi, Pune.',
    startDate: 'June 2021',
    endDate: 'July 2023',
    bulletPoints: [
      "| CGPA: 8.9 |",
    ],
  ),
  Educations(
    color: Colors.blue,
    location: "Nashik,Maharashtra,India",
    title: 'HSC (Computer Science)',
    name: 'Jawahar Nawodaya Vidyalaya',
    startDate: 'June 2017',
    endDate: 'June 2019',
    bulletPoints: [
      '| Percentage: 83% |',
    ],
  ),
  Educations(
    color: Colors.amber,
    location: "Nashik,Maharashtra,India",
    title: 'SSC',
    name: 'Jawahar Nawodaya Vidyalaya',
    startDate: 'June 2012',
    endDate: 'June 2017',
    bulletPoints: [
      '| Percentage: 84% |',
    ],
  ),
];
