import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(33, 255, 172, 64),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: List.generate(
                      skills.length,
                      (index) => Container(
                            margin:
                                currentState.currentDevice == Devices.ios.iPad
                                    ? const EdgeInsets.only(
                                        right: 30,
                                        top: 10,
                                        bottom: 20,
                                        left: 30)
                                    : const EdgeInsets.only(
                                        right: 4, top: 4, bottom: 10, left: 4),
                            // width: 70,
                            child: Column(
                              children: [
                                CustomButton(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  isThreeD: true,
                                  shadowColor: skills[index].colorS,
                                  backgroundColor: Colors.white,
                                  borderRadius: currentState.currentDevice ==
                                          Devices.android.onePlus8Pro
                                      ? 100
                                      : 10,
                                  onPressed: () {
                                    if (skills[index].hrefPath != null) {
                                      // open the url in the webpage
                                      currentState.launchInBrowser(
                                        skills[index].hrefPath!,
                                      );
                                    }
                                  },
                                  width: currentState.currentDevice ==
                                          Devices.ios.iPad
                                      ? 70
                                      : 40,
                                  height: currentState.currentDevice ==
                                          Devices.ios.iPad
                                      ? 70
                                      : 40,
                                  asset: skills[index].assetPath != null
                                      ? ButtonAsset(skills[index].assetPath!,
                                          width: currentState.currentDevice ==
                                                  Devices.ios.iPad
                                              ? 40
                                              : 25,
                                          height: currentState.currentDevice ==
                                                  Devices.ios.iPad
                                              ? 40
                                              : 25)
                                      : null,
                                  child: skills[index].assetPath == null
                                      ? const Center(
                                          child: Icon(
                                            Icons.circle,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                        )
                                      : null,
                                ),
                                SizedBox(
                                  width: 70,
                                  child: Center(
                                    child: Text(
                                      skills[index].skillName,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: GoogleFonts.openSans(
                                          fontSize:
                                              currentState.currentDevice ==
                                                      Devices.ios.iPad
                                                  ? 16
                                                  : 10,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                ),
                const Divider(
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: List.generate(
                      languages.length,
                      (index) => Container(
                            margin:
                                currentState.currentDevice == Devices.ios.iPad
                                    ? const EdgeInsets.only(
                                        right: 30,
                                        top: 10,
                                        bottom: 20,
                                        left: 30)
                                    : const EdgeInsets.only(
                                        right: 7, top: 7, bottom: 15, left: 7),
                            // width: 70,
                            child: Column(
                              children: [
                                CustomButton(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  isThreeD: true,
                                  shadowColor: languages[index].colorS,
                                  backgroundColor: Colors.white,
                                  borderRadius: currentState.currentDevice ==
                                          Devices.android.onePlus8Pro
                                      ? 100
                                      : 10,
                                  onPressed: () {
                                    if (languages[index].hrefPath != null) {
                                      // open the url in the webpage
                                      currentState.launchInBrowser(
                                        languages[index].hrefPath!,
                                      );
                                    }
                                  },
                                  width: currentState.currentDevice ==
                                          Devices.ios.iPad
                                      ? 70
                                      : 50,
                                  height: currentState.currentDevice ==
                                          Devices.ios.iPad
                                      ? 70
                                      : 50,
                                  asset: languages[index].assetPath != null
                                      ? ButtonAsset(languages[index].assetPath!,
                                          width: currentState.currentDevice ==
                                                  Devices.ios.iPad
                                              ? 50
                                              : 35,
                                          height: currentState.currentDevice ==
                                                  Devices.ios.iPad
                                              ? 50
                                              : 35)
                                      : null,
                                  child: languages[index].assetPath == null
                                      ? const Center(
                                          child: Icon(
                                            Icons.radio_button_on_rounded,
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
                                      languages[index].skillName,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: GoogleFonts.openSans(
                                          fontSize:
                                              currentState.currentDevice ==
                                                      Devices.ios.iPad
                                                  ? 16
                                                  : 12,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
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
          ),
        ),
      ),
    );
  }
}
