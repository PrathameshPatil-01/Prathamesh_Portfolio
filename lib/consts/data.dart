import 'package:pp_portfolio/models/app_model.dart';
import 'package:pp_portfolio/models/certifications_model.dart';
import 'package:pp_portfolio/models/color_model.dart';
import 'package:pp_portfolio/models/device_model.dart';
import 'package:pp_portfolio/models/education_model.dart';
import 'package:pp_portfolio/models/projects_model.dart';
import 'package:pp_portfolio/screen/miniProjects/certifications/certifications.dart';
import 'package:pp_portfolio/screen/miniProjects/education/education.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:pp_portfolio/models/skill_model.dart';
import 'package:pp_portfolio/screen/miniProjects/about/about.dart';
import 'package:pp_portfolio/screen/miniProjects/projects/projects.dart';
import 'package:pp_portfolio/screen/miniProjects/skills/skills.dart';
import 'package:pp_portfolio/screen/miniProjects/contactme/contactme.dart';

const String linkedIn =
    "https://www.linkedin.com/in/prathamesh-patil-10-12-2001-pp/";
const String github = "https://github.com/PrathameshPatil-01";
const String twitter = "https://twitter.com/imPBPatil";
const String resumeLink =
    "https://drive.google.com/file/d/19y-ivY9px_W5u8H25DKzFWcJ-RPEVkl1/view?usp=sharing";
const String email = "prathameshp800@gmail.com";
String introduction = '''
  My insatiable curiosity about technology fuels my eagerness to delve into its workings and glean insights from emerging trends. I'm deeply passionate about developing skills and firmly believe that the quality of work shapes the quality of life.

  With a background in science and technical studies, I aim to channel my expertise into the realm of evolutionary technologies. I'm constantly striving to enhance my tech-savviness and am keen on learning from seasoned developers, aspiring to connect and collaborate with them.

  My adeptness in various programming languages empowers me to solve intricate problems and provide efficient solutions. Engaging in diverse development projects, I've assimilated great ideas from senior developers, fostering an understanding of efficient code and program flow.
''';

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
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    color: const Color.fromARGB(255, 255, 0, 115),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Color.fromARGB(255, 255, 0, 115)],
    ),
  ),
  ColorModel(
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    color: const Color.fromARGB(255, 33, 47, 243),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.20, 0.95),
      colors: [
        Color.fromARGB(255, 37, 33, 243),
        Color.fromARGB(150, 1, 0, 11)
      ],
    ),
  ),
  ColorModel(
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [
        Color(0xffc95edb),
        Color.fromARGB(212, 0, 0, 0),
        Color.fromARGB(75, 0, 0, 0)
      ],
      // stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
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
    assetPath: "assets/icons/AboutMe.svg",
    screen: const AboutMe(),
  ),
  AppModel(
    title: "Skills",
    color: Colors.white,
    assetPath: "assets/icons/Skills.svg",
    screen: const Skills(),
  ),
  AppModel(
    title: "Education",
    color: Colors.white,
    assetPath: "assets/icons/Education.svg",
    screen: const Education(),
  ),
  AppModel(
    title: "Projects",
    color: Colors.white,
    assetPath: "assets/icons/Projects.svg",
    screen: const Project(),
  ),
  AppModel(
    title: "Certifications",
    color: Colors.white,
    assetPath: "assets/icons/Certifications.svg",
    screen: const Certification(),
  ),
  AppModel(
    title: "Resume",
    color: Colors.white,
    assetPath: "assets/icons/Resume.svg",
    link: resumeLink,
  ),
  AppModel(
    title: "Contact Me",
    color: Colors.white,
    assetPath: "assets/icons/Connect.svg",
    screen: const ContactMe(),
  ),
];

List<AppModel> socialApps = [
  AppModel(
    title: "GitHub",
    assetPath: "assets/icons/Github-Light.svg",
    color: Colors.white,
    link: github,
  ),
  AppModel(
    title: "LinkedIn",
    assetPath: "assets/icons/Linkedin.svg",
    color: Colors.white,
    link: linkedIn,
  ),
  AppModel(
    title: "Twitter/X",
    assetPath: "assets/icons/X.svg",
    color: Colors.white,
    link: twitter,
  ),
];

List<SkillsModel> skills = [
  SkillsModel(
    skillName: "C++",
    colorS: const Color(0xFF00599C),
    assetPath: "assets/icons/Cpp.svg",
    hrefPath: "https://en.wikipedia.org/wiki/C%2B%2B",
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: const Color(0xFF0175C2),
    assetPath: "assets/icons/Dart-Light.svg",
    hrefPath: "https://dart.dev/",
  ),
  SkillsModel(
    skillName: "Python",
    colorS: const Color(0xFFFFD43B),
    assetPath: "assets/icons/Python-light.svg",
    hrefPath: "https://www.python.org/",
  ),
  SkillsModel(
    skillName: "JavaScript",
    colorS: const Color(0xFF323330),
    assetPath: "assets/icons/JavaScript.svg",
    hrefPath: "https://developer.mozilla.org/en-US/docs/Web/JavaScript",
  ),
  SkillsModel(
    skillName: "HTML",
    colorS: const Color(0xFFE34F26),
    assetPath: "assets/icons/HTML.svg",
    hrefPath: "https://developer.mozilla.org/en-US/docs/Web/HTML",
  ),
  SkillsModel(
    skillName: "CSS",
    colorS: const Color(0xFF1572B6),
    assetPath: "assets/icons/CSS.svg",
    hrefPath: "https://developer.mozilla.org/en-US/docs/Web/CSS",
  ),
  SkillsModel(
    skillName: "Flutter",
    colorS: const Color(0xFF02569B),
    assetPath: "assets/icons/Flutter-Light.svg",
    hrefPath: "https://flutter.dev/",
  ),
  SkillsModel(
    skillName: "Firebase",
    colorS: const Color(0xFFffca28),
    assetPath: "assets/icons/Firebase-Light.svg",
    hrefPath: "https://firebase.google.com/",
  ),
  SkillsModel(
    skillName: "Flask",
    colorS: const Color(0xFF000000),
    assetPath: "assets/icons/Flask-Light.svg",
    hrefPath: "https://palletsprojects.com/p/jinja/",
  ),
  SkillsModel(
    skillName: "Jinja",
    colorS: const Color(0xFFB41717),
    assetPath: "assets/icons/Jinja.svg",
    hrefPath: "https://jinja.palletsprojects.com/en/3.0.x/",
  ),
  SkillsModel(
    skillName: "Bootstrap",
    colorS: const Color(0xFF563D7C),
    assetPath: "assets/icons/Bootstrap.svg",
    hrefPath: "https://getbootstrap.com/",
  ),
  SkillsModel(
    skillName: "Selenium",
    colorS: const Color(0xFF43B02A),
    assetPath: "assets/icons/Selenium.svg",
    hrefPath: "https://www.selenium.dev/",
  ),
  SkillsModel(
    skillName: "Numpy",
    colorS: const Color(0xFF777BB4),
    assetPath: "assets/icons/Numpy.svg",
    hrefPath: "https://numpy.org/",
  ),
  SkillsModel(
    skillName: "Pandas",
    colorS: const Color(0xFF2C2D72),
    assetPath: "assets/icons/Pandas.svg",
    hrefPath: "https://pandas.pydata.org/",
  ),
  SkillsModel(
    skillName: "Plotly",
    colorS: const Color(0xFF239120),
    assetPath: "assets/icons/Plotly.svg",
    hrefPath: "https://plotly.com/",
  ),
  SkillsModel(
    skillName: "SQLAlchemy",
    colorS: const Color(0xFFD71F00),
    assetPath: "assets/icons/SQLAlchemy.svg",
    hrefPath: "https://www.sqlalchemy.org/",
  ),
  SkillsModel(
    skillName: "OpenCV",
    colorS: const Color(0xFF27338e),
    assetPath: "assets/icons/OpenCV.svg",
    hrefPath: "https://opencv.org/",
  ),
  SkillsModel(
    skillName: "ExpressJS",
    colorS: const Color(0xFF000000),
    assetPath: "assets/icons/ExpressJS-Light.svg",
    hrefPath: "https://expressjs.com/",
  ),
  SkillsModel(
    skillName: "Axios",
    colorS: const Color(0xFF671ddf),
    assetPath: "assets/icons/Axios.svg",
    hrefPath: "https://axios-http.com/",
  ),
  SkillsModel(
    skillName: "NodeJS",
    colorS: const Color(0xFF339933),
    assetPath: "assets/icons/NodeJS-Light.svg",
    hrefPath: "https://nodejs.org/",
  ),
  SkillsModel(
    skillName: "npm",
    colorS: const Color(0xFFCB3837),
    assetPath: "assets/icons/npm.svg",
    hrefPath: "https://www.npmjs.com/",
  ),
  SkillsModel(
    skillName: "Postman",
    colorS: const Color(0xFFFF6C37),
    assetPath: "assets/icons/Postman.svg",
    hrefPath: "https://www.postman.com/",
  ),
  SkillsModel(
    skillName: "React",
    colorS: const Color(0xFF20232A),
    assetPath: "assets/icons/React-Light.svg",
    hrefPath: "https://reactjs.org/",
  ),
  SkillsModel(
    skillName: "SQLite",
    colorS: const Color(0xFF07405E),
    assetPath: "assets/icons/SQLite.svg",
    hrefPath: "https://www.sqlite.org/",
  ),
  SkillsModel(
    skillName: "MongoDB",
    colorS: const Color(0xFF4EA94B),
    assetPath: "assets/icons/MongoDB.svg",
    hrefPath: "https://www.mongodb.com/",
  ),
  SkillsModel(
    skillName: "MySQL",
    colorS: const Color(0xFF005C84),
    assetPath: "assets/icons/MySQL-Light.svg",
    hrefPath: "https://www.mysql.com/",
  ),
  SkillsModel(
    skillName: "Render",
    colorS: const Color(0xFF46E3B7),
    assetPath: "assets/icons/Render.svg",
    hrefPath: "https://render.com/",
  ),
  SkillsModel(
    skillName: "Heroku",
    colorS: const Color(0xFF430098),
    assetPath: "assets/icons/Heroku.svg",
    hrefPath: "https://www.heroku.com/",
  ),
  SkillsModel(
    skillName: "Netlify",
    colorS: const Color(0xFF00C7B7),
    assetPath: "assets/icons/Netlify-Light.svg",
    hrefPath: "https://www.netlify.com/",
  ),
  SkillsModel(
    skillName: "Arduino",
    colorS: const Color(0xFF00878F),
    assetPath: "assets/icons/Arduino.svg",
    hrefPath: "https://www.arduino.cc/",
  ),
  SkillsModel(
    skillName: "Raspberry Pi",
    colorS: const Color(0xFFA22846),
    assetPath: "assets/icons/RaspberryPi-Light.svg",
    hrefPath: "https://www.raspberrypi.org/",
  ),
];

List<SkillsModel> languages = [
  SkillsModel(
    skillName: "Marathi",
    colorS: Colors.orange,
    assetPath: "assets/icons/Hindi.svg",
    hrefPath:
        "https://mr.wikipedia.org/wiki/%E0%A4%AE%E0%A4%B0%E0%A4%BE%E0%A4%A0%E0%A5%80_%E0%A4%AD%E0%A4%BE%E0%A4%B7%E0%A4%BE",
  ),
  SkillsModel(
    skillName: "Hindi",
    colorS: Colors.black,
    assetPath: "assets/icons/Hindi.svg",
    hrefPath:
        "https://hi.wikipedia.org/wiki/%E0%A4%B9%E0%A4%BF%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%80",
  ),
  SkillsModel(
    skillName: "English",
    colorS: const Color.fromARGB(255, 255, 0, 0),
    assetPath: "assets/icons/English.svg",
    hrefPath: "https://en.wikipedia.org/wiki/English_language",
  ),
];

final List<Educations> educations = [
  Educations(
    color: Colors.red,
    location: "Pune,Maharashtra,India",
    title: 'Electronics and Telecommunications Engineering',
    name: 'Dr. D. Y. Patil College of Engineering, Akurdi, Pune.',
    startDate: 'June 2021',
    endDate: 'July 2023',
    bulletPoints: [
      "CGPA: 8.9",
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
      'Percentage: 83%',
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
      'Percentage: 84% ',
    ],
  ),
];

final List<Certifications> certifications = [
  Certifications(
      color: const Color.fromARGB(255, 255, 7, 7),
      title: "1. 100 Days of Code: The Complete Python Pro Bootcamp for 2021",
      issuedBy: "UDEMY",
      length: "64 Total Hours",
      endDate: "Nov. 14  2021",
      link:
          'https://drive.google.com/file/d/1NC9b5kRGmgEUvDOhjXjCykcB3snRyGkZ/view?usp=sharing'),
  Certifications(
      color: const Color.fromARGB(255, 7, 255, 85),
      title: "2. Flutter & Dart - The Complete Guide [2023 Edition]",
      issuedBy: "UDEMY",
      length: "30 Total Hours",
      endDate: "Oct. 5  2023",
      link:
          "https://drive.google.com/file/d/16KGkkVsa5bRPpo6vaR8Gqb2_mlqxDs8m/view"),
];

final List<Projects> projects = [
  Projects(
      color: Colors.amber,
      title: "1. Flutter Chat App ",
      startDate: 'Sept 2023',
    endDate: 'Oct 2023',
      bulletPoints: [
        "Description: Developed a dynamic chat app providing real-time communication. I’ve tried to implement max features from WhatsApp.",
      ],
      link: "https://github.com/PrathameshPatil-01/CHAT_APP-FLUTTER.git"),
  Projects(
      color: Colors.red,
      title: "2. Flutter Expense Tracker App ",
      startDate: 'Sept 2023',
    endDate: 'Oct 2023',
      bulletPoints: [
        "Description: Track expenses with their category and date of expense. Visualize your spending habits with an intuitive bar chart.",
      ],
      link:
          "https://github.com/PrathameshPatil-01/EXPENSE_TRACKER-FLUTTER.git"),
  Projects(
      color: Colors.green,
      title: "3. Flutter Quiz App ",
      startDate: 'Sept 2023',
    endDate: 'Sept 2023',
      bulletPoints: [
        "Description: The Quiz App features a series of questions and instant feedback on correct answers upon completion.",
      ],
      link:
          "https://github.com/PrathameshPatil-01/FLUTTER_AND_DART_QUIZ_APP.git"),
  Projects(
    color: Colors.purple,
    title: "4. E-Shopee (e-Commerce Website)",
    startDate: 'Dec 2021',
    endDate: 'Jan 2022',
    bulletPoints: [
      "Description: A simple e-commerce website with complete user authentication & authorization, responsiveness & more fundamentals. ",
    ],
    link: "https://github.com/PrathameshPatil-01/E-SHOPEE_PYTHON.git",
    webLink: "https://e-shopee-python-prathamesh.onrender.com",
  ),
  Projects(
      color: Colors.yellow,
      title: "5. IOT-Based Smart Attendance System (Fourth Year Project) ",
      startDate: "Aug 2022",
      endDate: "Jun 2023",
      bulletPoints: [
        "Description: This system combines RFID and Face Recognition for secure, contactless attendance with simple web interface. ",
        "Technologies Used: HTML, CSS, Bootstrap, Python ",
        "Hardware requirements: RFID Reader, Pi Camera, Raspberry Pi, LCD 16x2, Connecting Wires ",
        "Software requirements: Raspbian for Raspberry Pi, Python, SQLite Database ",
      ],
      link: "https://github.com/PrathameshPatil-01/B.E.PROJECT-ENTC.git"),
  Projects(
      color: Colors.blue,
      title: "6. Elevator Cabin Light Automation (Third Year Project)",
      startDate: "Aug 2021",
      endDate: "May 2022",
      bulletPoints: [
        "Description: The system made with minimum cost possible to automate the cabin lights to save energy.",
        "Hardware requirements: IR Sensors, Arduino Uno, LCD 16x2, Connecting Wires, LED Lights, Power Supply Unit ",
        "Software requirements: Arduino IDE, Embedded C, Proteus"
      ]),
];
