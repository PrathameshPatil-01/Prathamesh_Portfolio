import 'package:analog_clock/analog_clock.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';

class PhoneHomeScreen extends StatefulWidget {
  const PhoneHomeScreen({super.key});
  @override
  createState() => PhoneHomeScreenState();
}

class PhoneHomeScreenState extends State<PhoneHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CurrentState currentState =
        Provider.of<CurrentState>(context);
    return Container(
      height: size.height,
      padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
      child: Column(
        children: [
          Container(
            width: currentState.currentDevice == Devices.ios.iPad ? 270 : 220,
            height: currentState.currentDevice == Devices.ios.iPad ? 270 : 220,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnalogClock(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3.0, color: Colors.black),
                      color: Colors.grey[200],
                      shape: BoxShape.circle),
                  width: currentState.currentDevice == Devices.ios.iPad
                      ? 190
                      : 140,
                  height: currentState.currentDevice == Devices.ios.iPad
                      ? 190
                      : 140,
                  isLive: true,
                  hourHandColor: Colors.black,
                  minuteHandColor: Colors.black,
                  showSecondHand: true,
                  secondHandColor: currentState.bgGradient.colors[0],
                  numberColor: currentState.bgGradient.colors[1],
                  showNumbers: true,
                  showAllNumbers: false,
                  textScaleFactor: 2,
                  showTicks: true,
                  showDigitalClock: false,
                  datetime: DateTime.now(),
                  tickColor: currentState.bgGradient.colors[1],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Text(
                //   currentDay,
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: currentState.currentDevice == Devices.ios.iPad
                //         ? 24
                //         : 16,
                //   ),
                // ),
                // Text(
                //   currentDate,
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: currentState.currentDevice == Devices.ios.iPad
                //         ? 24
                //         : 16,
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
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
                                        ? 0.05 * size.height
                                        : 0.045 * size.height,
                                    height: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 0.05 * size.height
                                        : 0.045 * size.height)
                                : null,
                            child: apps[index].assetPath == null
                                ? Center(
                                    child: Icon(
                                      apps[index].icon,
                                      size: 0.04 * size.height,
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
                                        ? 0.016 * size.height
                                        : 0.014 * size.height,
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
                ? size.height * 0.17
                : size.height * 0.32,
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
                                        ? 0.04 * size.height
                                        : 0.04 * size.height,
                                    height: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 0.04 * size.height
                                        : 0.04 * size.height)
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
                                        ? 0.016 * size.height
                                        : 0.014 * size.height,
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
