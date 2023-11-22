import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/models/certifications_model.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';

class Certification extends StatelessWidget {
  const Certification({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: true);
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/icons/Certifications.svg",
              width: 170,
              height: 170,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(
            certifications.length,
            (index) {
              Certifications certificate = certifications[index];
              return ExpansionTile(
                  tilePadding: const EdgeInsets.all(20),
                  childrenPadding: const EdgeInsets.all(10),
                  leading: Container(
                    width: 2,
                    height: 100,
                    color: certificate.color,
                  ),
                  title: Text(
                    certificate.title,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: currentState.currentDevice == Devices.ios.iPad
                          ? 22
                          : 16,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      '${certificate.issuedBy}\n${certificate.endDate}\n${certificate.length}',
                      style: GoogleFonts.inter(
                          fontSize:
                              currentState.currentDevice == Devices.ios.iPad
                                  ? 18
                                  : 13,
                          color: const Color.fromARGB(255, 45, 45, 50)),
                    ),
                  ),
                  children: [
                    certificate.link != null
                        ? ListTile(
                            contentPadding:
                                const EdgeInsets.fromLTRB(70, 0, 20, 0),
                            title: Row(
                              children: [
                                Flexible(
                                  child: GestureDetector(
                                    onTap: () {
                                      currentState
                                          .launchInBrowser(certificate.link!);
                                    },
                                    child: Text(
                                      "Certificate Link",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: currentState.currentDevice ==
                                                Devices.ios.iPad
                                            ? 20
                                            : 14,
                                        decoration: TextDecoration.underline,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                CustomButton(
                                  margin: currentState.currentDevice ==
                                          Devices.ios.iPad
                                      ? const EdgeInsets.only(
                                          top: 4,
                                          bottom: 4,
                                          right: 10,
                                          left: 350)
                                      : const EdgeInsets.only(
                                          top: 3,
                                          bottom: 3,
                                          left: 45,
                                          right: 5),
                                  backgroundColor: Colors.white,
                                  borderRadius: currentState.currentDevice ==
                                          Devices.android.onePlus8Pro
                                      ? 100
                                      : 10,
                                  onPressed: () {
                                    if (certificate.link != null) {
                                      // open the url in the webpage
                                      currentState.launchInBrowser(
                                        certificate.link!,
                                      );
                                    }
                                  },
                                  width: currentState.currentDevice ==
                                          Devices.ios.iPad
                                      ? 55
                                      : 35,
                                  height: currentState.currentDevice ==
                                          Devices.ios.iPad
                                      ? 55
                                      : 35,
                                  asset: ButtonAsset("assets/icons/Drive.svg",
                                      width: currentState.currentDevice ==
                                              Devices.ios.iPad
                                          ? 50
                                          : 30,
                                      height: currentState.currentDevice ==
                                              Devices.ios.iPad
                                          ? 50
                                          : 30),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ]);
            },
          ),
        ],
      ),
    );
  }
}
