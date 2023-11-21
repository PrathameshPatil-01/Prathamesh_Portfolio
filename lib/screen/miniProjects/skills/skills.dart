import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
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
                                      : 50,
                                  height: currentState.currentDevice ==
                                          Devices.ios.iPad
                                      ? 70
                                      : 50,
                                  asset: skills[index].assetPath != null
                                      ? ButtonAsset(skills[index].assetPath!,
                                          width: 35, height: 35)
                                      : null,
                                  child: skills[index].assetPath == null
                                      ? const Center(
                                          child: Icon(
                                            Icons.circle,
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
                                      skills[index].skillName,
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
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Languages",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(
                      languages.length,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xffeff0e0),
                            border: Border.all(color: languages[index].colorS)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              languages[index].skillName,
                              style: GoogleFonts.inter(fontSize: 14),
                            ),
                            languages[index].hrefPath != null
                                ? const Icon(Icons.flutter_dash)
                                : Container()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
