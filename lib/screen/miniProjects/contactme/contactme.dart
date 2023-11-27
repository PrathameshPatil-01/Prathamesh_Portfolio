import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';
import 'package:device_frame/device_frame.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: true);
    return SelectionArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
              color: const Color.fromARGB(60, 116, 232, 255),
              borderRadius: BorderRadius.circular(15),
            ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        "assets/icons/Connect.svg",
                        width: 180,
                        height: 180,
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "📞  72186 72175",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold, fontSize: currentState.currentDevice == Devices.ios.iPad
                        ? 28
                        : 18,),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "📧  prathameshp800@gmail.com",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold, fontSize: currentState.currentDevice == Devices.ios.iPad
                        ? 28
                        : 17,),
                          )
                        ],
                      ),
                    ),
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
