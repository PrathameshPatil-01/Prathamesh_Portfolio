import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/models/projects_model.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';

class Project extends StatelessWidget {
  const Project({super.key});

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
              "assets/icons/Projects.svg",
              width: 170,
              height: 170,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(projects.length, (index) {
            Projects project = projects[index];
            return ExpansionTile(
                tilePadding: const EdgeInsets.all(20),
                childrenPadding: const EdgeInsets.all(10),
                leading: Container(
                  width: 2,
                  height: 100,
                  color: project.color,
                ),
                title: Text(
                  project.title,
                  style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    '\n| ${project.startDate} - ${project.endDate} | ',
                    style: GoogleFonts.inter(fontSize: 13, color: Colors.red),
                  ),
                ),
                children: [
                  ...project.bulletPoints.map((bulletPoint) {
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
                                fontSize: 12,
                              ),
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  project.link != null
                      ? ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
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
                                    currentState.launchInBrowser(project.link!);
                                  },
                                  child: const Text(
                                    "GitHub Repository Link ",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                    ),
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                  project.webLink != null
                      ? ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
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
                                        .launchInBrowser(project.webLink!);
                                  },
                                  child: const Text(
                                    "Website Link ",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                    ),
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ]);
          })
        ],
      ),
    );
  }
}
