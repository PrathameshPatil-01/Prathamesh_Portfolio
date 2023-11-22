import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/models/certifications_model.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';

class Certification extends StatelessWidget {
  const Certification({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Scaffold(
      body: ListView(
        children: [
          // const SizedBox(
          //   height: 20,
          // ),
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
          ...List.generate(certifications.length, (index) {
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
                style: GoogleFonts.inter(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  '${certificate.issuedBy}\n${certificate.endDate}\n${certificate.length}',
                  style: GoogleFonts.inter(
                      fontSize: 13, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              children: [
                certificate.link != null
                    ? ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 15.0),
                        title: Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: GestureDetector(
                                onTap: () {
                                  currentState
                                      .launchInBrowser(certificate.link!);
                                },
                                child: const Text(
                                  "Certificate Link",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 243, 33, 33),
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                  maxLines: 3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container()
              ],
            );
          })
        ],
      ),
    );
  }
}
