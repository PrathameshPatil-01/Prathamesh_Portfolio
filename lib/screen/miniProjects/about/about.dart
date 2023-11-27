import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  double opacity = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(33, 255, 172, 64),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SvgPicture.asset(
                    "assets/icons/AboutMe.svg",
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    "Hi, I am Prathamesh Patil",
                    style: GoogleFonts.openSans(
                        fontSize: currentState.currentDevice == Devices.ios.iPad
                            ? 30
                            : 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  introduction,
                  style: GoogleFonts.openSans(
                      fontSize: currentState.currentDevice == Devices.ios.iPad
                          ? 25
                          : 18,
                      fontWeight: FontWeight.w500),
                ).animate().fadeIn(duration: const Duration(milliseconds: 500))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
