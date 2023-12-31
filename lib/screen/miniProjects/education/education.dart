import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/models/education_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';
import 'package:device_frame/device_frame.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: true);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(33, 255, 172, 64),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListView(
          children: [
            // const SizedBox(
            //   height: 20,
            // ),
            Center(
              child: SvgPicture.asset(
                "assets/icons/Education.svg",
                width: 170,
                height: 170,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...List.generate(educations.length, (index) {
              Educations education = educations[index];
              return ExpansionTile(
                backgroundColor: Colors.white,
                textColor: Colors.black,
                tilePadding: const EdgeInsets.all(20),
                childrenPadding: const EdgeInsets.all(10),
                leading: Container(
                  width: 4,
                  height: 150,
                  color: education.color,
                ),
                title: Text(
                  education.title,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: currentState.currentDevice == Devices.ios.iPad
                        ? 26
                        : 16,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    '${education.name}\n${education.startDate} - ${education.endDate}\n${education.location}',
                    style: GoogleFonts.inter(
                        fontSize: currentState.currentDevice == Devices.ios.iPad
                            ? 22
                            : 13,
                        color: const Color.fromARGB(255, 40, 40, 40)),
                  ),
                ),
                children: education.bulletPoints.map((bulletPoint) {
                  return ListTile(
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
                          child: Text(
                            bulletPoint,
                            style: GoogleFonts.inter(
                              fontSize:
                                  currentState.currentDevice == Devices.ios.iPad
                                      ? 24
                                      : 14,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              );
            })
          ],
        ),
      ),
    );
  }
}
