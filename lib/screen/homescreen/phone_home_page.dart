import 'dart:async';

import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';

class PhoneHomeScreen extends StatefulWidget {
  const PhoneHomeScreen({super.key});
  @override
  createState() => AnimatedDigitalClockState();
}

class AnimatedDigitalClockState extends State<PhoneHomeScreen> {
  String currentTime = '';
  String currentDay = '';
  String currentDate = '';

  @override
  void initState() {
    super.initState();
    updateTime();
  }

  void updateTime() {
    DateTime now = DateTime.now();
    setState(() {
      currentTime = DateFormat.Hm().format(now);
      currentDay = DateFormat.EEEE().format(now);
      currentDate = DateFormat.yMd().format(now);
    });

    // Update time every second
    Future.delayed(const Duration(seconds: 1), updateTime);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Container(
      height: size.height,
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 170,
            decoration: BoxDecoration(
              border: Border.all(color: currentState.bgGradient.colors[1]),
              borderRadius: BorderRadius.circular(20),
              color: currentState.bgGradient.colors[0],
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(200, 255, 255, 255),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(5, 10),
                  blurRadius: 20,
                )
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  currentTime,
                  style: TextStyle(
                    color: currentState.bgGradient.colors[1],
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  currentDay,
                  style: TextStyle(
                    color: currentState.bgGradient.colors[1],
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  currentDate,
                  style: TextStyle(
                    color: currentState.bgGradient.colors[1],
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: List.generate(
                apps.length,
                (index) => Container(
                      margin: currentState.currentDevice == Devices.ios.iPad
                          ? const EdgeInsets.only(
                              right: 30, top: 10, bottom: 20, left: 30)
                          : const EdgeInsets.only(
                              right: 7, top: 7, bottom: 15, left: 7),
                      // width: 70,
                      child: Column(
                        children: [
                          CustomButton(
                            margin: const EdgeInsets.only(bottom: 5),
                            isThreeD: true,
                            shadowColor: Colors.black,
                            backgroundColor: Colors.white,
                            borderRadius: currentState.currentDevice ==
                                    Devices.android.onePlus8Pro
                                ? 100
                                : 10,
                            onPressed: () {
                              if (apps[index].link != null) {
                                // open the url in the webpage
                                currentState.launchInBrowser(
                                  apps[index].link!,
                                );
                              } else if (apps[index].screen != null) {
                                currentState.changePhoneScreen(
                                    apps[index].screen!, false,
                                    titlee: apps[index].title);
                              }
                            },
                            width:
                                currentState.currentDevice == Devices.ios.iPad
                                    ? 70
                                    : 50,
                            height:
                                currentState.currentDevice == Devices.ios.iPad
                                    ? 70
                                    : 50,
                            asset: apps[index].assetPath != null
                                ? ButtonAsset(apps[index].assetPath!,
                                    width: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 50
                                        : 40,
                                    height: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 50
                                        : 40)
                                : null,
                            child: apps[index].assetPath == null
                                ? Center(
                                    child: Icon(
                                      apps[index].icon,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  )
                                : null,
                          ),
                          SizedBox(
                            width: 90,
                            child: Center(
                              child: Text(
                                apps[index].title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.openSans(
                                    fontSize: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 17
                                        : 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
          ),
          SizedBox(
            height: currentState.currentDevice != Devices.ios.iPad
                ? size.height * 0.15
                : size.height * 0.35,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.end,
            children: List.generate(
                socialApps.length,
                (index) => Container(
                      margin: currentState.currentDevice == Devices.ios.iPad
                          ? const EdgeInsets.only(
                              right: 30, top: 10, bottom: 20, left: 30)
                          : const EdgeInsets.only(
                              right: 7, top: 7, bottom: 15, left: 7),
                      // width: 70,
                      child: Column(
                        children: [
                          CustomButton(
                            margin: const EdgeInsets.only(bottom: 5),
                            isThreeD: true,
                            shadowColor: Colors.black,
                            backgroundColor: Colors.white,
                            borderRadius: currentState.currentDevice ==
                                    Devices.android.onePlus8Pro
                                ? 100
                                : 10,
                            onPressed: () {
                              if (socialApps[index].link != null) {
                                // open the url in the webpage
                                currentState.launchInBrowser(
                                  socialApps[index].link!,
                                );
                              } else if (socialApps[index].screen != null) {
                                currentState.changePhoneScreen(
                                    socialApps[index].screen!, false,
                                    titlee: socialApps[index].title);
                              }
                            },
                            width:
                                currentState.currentDevice == Devices.ios.iPad
                                    ? 70
                                    : 50,
                            height:
                                currentState.currentDevice == Devices.ios.iPad
                                    ? 70
                                    : 50,
                            asset: socialApps[index].assetPath != null
                                ? ButtonAsset(socialApps[index].assetPath!,
                                    width: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 50
                                        : 35,
                                    height: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 50
                                        : 35)
                                : null,
                            child: socialApps[index].assetPath == null
                                ? Center(
                                    child: Icon(
                                      socialApps[index].icon,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  )
                                : null,
                          ),
                          SizedBox(
                            width: 90,
                            child: Center(
                              child: Text(
                                socialApps[index].title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.openSans(
                                    fontSize: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 17
                                        : 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
