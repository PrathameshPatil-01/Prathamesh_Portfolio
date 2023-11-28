import 'package:auto_size_text/auto_size_text.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:pp_portfolio/providers/theme_provider.dart';
import 'package:pp_portfolio/widgets/frosted_container.dart';
import 'package:pp_portfolio/widgets/rain_cloud.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'phone_screen_wrapper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    theme.size = MediaQuery.of(context).size;
    theme.widthRatio = theme.size.width / baseWidth;
    theme.heightRatio = theme.size.height / baseHeight;
    bool phone = false;
    if (size.width < 1100) {
      phone = true;
      currentState.changeSelectedDevice(
        devices[1].device,
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Selector<CurrentState, Gradient>(
            selector: (context, provider) => provider.bgGradient,
            builder: (context, _, __) {
              return Container(
                decoration: BoxDecoration(gradient: currentState.bgGradient),
              );
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/ppp.png',
              width: size.width,
              fit: BoxFit.contain,
            ),
          ),
          size.height > 600
              ? const Rain(
                  oposite: false,
                  top: 150,
                )
              : Container(),
          size.height > 600
              ? const Rain(
                  oposite: true,
                  top: 50,
                )
              : Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Left side frosted Containers
                  phone
                      ? Container()
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              margin: EdgeInsets.only(
                                  top: 0,
                                  bottom: 10 * theme.heightRatio,
                                  right: 20),
                              child: FrostedWidget(
                                childW: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: AutoSizeText.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Prathamesh\n',
                                                  style: GoogleFonts.exo(
                                                    fontSize: 25,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'Patil',
                                                  style: GoogleFonts.exo(
                                                    fontSize: 25,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                            maxFontSize: 25,
                                            minFontSize: 10,
                                            maxLines: 2,
                                          ).animate().fadeIn(
                                              delay: .8.seconds,
                                              duration: .7.seconds),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                height: 175 * theme.heightRatio,
                                width: 250 * theme.widthRatio,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              margin: EdgeInsets.only(
                                  top: 0,
                                  bottom: 10 * theme.heightRatio,
                                  right: 20),
                              child: FrostedWidget(
                                childW: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: AutoSizeText(
                                          'I am eager to leverage my development skills to create intuitive and innovative applications. Committed to continuous learning and building impactful solutions.',
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 8,
                                        ).animate().fadeIn(
                                            delay: 1.seconds,
                                            duration: .7.seconds),
                                      ),
                                    ],
                                  ),
                                ),
                                height: 300 * theme.heightRatio,
                                width: 250 * theme.widthRatio,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              margin: EdgeInsets.only(
                                  top: 0,
                                  bottom: 10 * theme.heightRatio,
                                  right: 20),
                              child: FrostedWidget(
                                childW: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: AutoSizeText(
                                            "Powered by Flutter with passion ❤️",
                                            style: GoogleFonts.exo(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                            maxFontSize: 14,
                                            minFontSize: 10,
                                            maxLines: 2,
                                          ).animate().fadeIn(
                                              delay: .8.seconds,
                                              duration: .7.seconds),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                height: 120 *
                                    theme
                                        .heightRatio, // Adjust the height as needed
                                width: 250 * theme.widthRatio,
                              ),
                            ),
                          ],
                        ),
                  // main mobile screen
                  Column(
                    children: [
                      phone
                          ? Wrap(
                              children: [
                                ...List.generate(
                                  colorPalette.length,
                                  (index) => Consumer<CurrentState>(
                                      builder: (context, _, __) {
                                    return CustomButton(
                                      margin: const EdgeInsets.all(10),
                                      pressed:
                                          currentState.selectedColor == index
                                              ? Pressed.pressed
                                              : Pressed.notPressed,
                                      animate: true,
                                      borderRadius: 100,
                                      shadowColor: Colors.blueGrey[50],
                                      isThreeD: true,
                                      backgroundColor:
                                          colorPalette[index].color,
                                      width: 80 * theme.widthRatio,
                                      height: 80 * theme.widthRatio,
                                      onPressed: () {
                                        currentState.changeGradient(index);
                                      },
                                    );
                                  }),
                                )
                              ],
                            )
                          : Container(),
                      SizedBox(
                        height: phone ? size.height * 0.8 : size.height * 0.9,
                        width: phone ? size.width * 0.8 : null,
                        child: Consumer<CurrentState>(
                          // selector: (context, provider) => provider.currentDevice,
                          builder: (context, _, __) {
                            return DeviceFrame(
                              device: currentState.currentDevice,
                              screen: Container(
                                  decoration: BoxDecoration(
                                      gradient: currentState.bgGradient),
                                  child: ScreenWrapper(
                                      childG: currentState.currentScreen)),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  /// Right side frosted containers
                  phone
                      ? Container()
                      : Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 0, bottom: 10, left: 20),
                              child: FrostedWidget(
                                childW: Center(
                                  child: Container(
                                    margin: const EdgeInsets.all(10),
                                    padding:
                                        EdgeInsets.all(10 * theme.widthRatio),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        StreamBuilder<DateTime>(
                                          stream: Stream.periodic(
                                              const Duration(seconds: 1),
                                              (_) => DateTime.now()),
                                          builder: (context, snapshot) {
                                            final currentTime =
                                                snapshot.data ?? DateTime.now();
                                            return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    style: GoogleFonts.exo(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: DateFormat(
                                                                'HH:mm:')
                                                            .format(
                                                                currentTime),
                                                      ),
                                                      TextSpan(
                                                        text: DateFormat('ss')
                                                            .format(
                                                                currentTime),
                                                        style: const TextStyle(
                                                            color: Colors
                                                                .cyanAccent),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                AutoSizeText(
                                                  DateFormat('EEEE')
                                                      .format(currentTime),
                                                  style: const TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                  maxFontSize: 16,
                                                  minFontSize: 8,
                                                  maxLines: 1,
                                                ),
                                                AutoSizeText(
                                                  DateFormat('d MMMM yyyy')
                                                      .format(currentTime),
                                                  style: const TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                  maxFontSize: 16,
                                                  minFontSize: 8,
                                                  maxLines: 1,
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                height: 175 * theme.heightRatio,
                                width: 245 * theme.widthRatio,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 0, bottom: 10, left: 20),
                              child: FrostedWidget(
                                height: 300 * theme.heightRatio,
                                width: 250 * theme.widthRatio,
                                childW: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Wrap(
                                      children: [
                                        ...List.generate(
                                          colorPalette.length,
                                          (index) => Consumer<CurrentState>(
                                              builder: (context, _, __) {
                                            return CustomButton(
                                              margin: const EdgeInsets.all(10),
                                              pressed:
                                                  currentState.selectedColor ==
                                                          index
                                                      ? Pressed.pressed
                                                      : Pressed.notPressed,
                                              animate: true,
                                              borderRadius: 100,
                                              shadowColor: Colors.blueGrey[50],
                                              isThreeD: true,
                                              backgroundColor:
                                                  colorPalette[index].color,
                                              width: 50 * theme.widthRatio,
                                              height: 50 * theme.widthRatio,
                                              onPressed: () {
                                                currentState
                                                    .changeGradient(index);
                                              },
                                            );
                                          }),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              margin: EdgeInsets.only(
                                  top: 0,
                                  bottom: 10 * theme.heightRatio,
                                  left: 10),
                              child: FrostedWidget(
                                childW: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // Adjust the spacing as needed
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: AutoSizeText(
                                          '© 2023 Prathamesh Patil.',
                                          style: GoogleFonts.inter(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxFontSize: 12,
                                          minFontSize: 10,
                                          maxLines: 3,
                                        ).animate().fadeIn(
                                            delay: 1.seconds,
                                            duration: .7.seconds),
                                      ),
                                    ],
                                  ),
                                ),
                                height: 120 *
                                    theme
                                        .heightRatio, // Adjust the height as needed
                                width: 250 * theme.widthRatio,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                ],
              ),
              SizedBox(
                height: 10 * theme.heightRatio,
              ),

              /// bottom button for device selection
              phone
                  ? Selector<CurrentState, DeviceInfo>(
                      selector: (context, p1) => p1.currentDevice,
                      builder: (context, _, __) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ...List.generate(devices.length - 1, (index) {
                              return CustomButton(
                                pressed: currentState.currentDevice ==
                                        devices[index].device
                                    ? Pressed.pressed
                                    : Pressed.notPressed,
                                animate: true,
                                borderRadius: 100,
                                isThreeD: true,
                                backgroundColor: Colors.black,
                                width: 140 * theme.widthRatio,
                                height: 140 * theme.widthRatio,
                                onPressed: () {
                                  currentState.changeSelectedDevice(
                                    devices[index].device,
                                  );
                                },
                                child: Center(
                                  child: Icon(
                                    devices[index].icon,
                                    color: Colors.white,
                                    size: 100 * theme.widthRatio,
                                  ),
                                ),
                              );
                            })
                          ],
                        );
                      })
                  : Selector<CurrentState, DeviceInfo>(
                      selector: (context, p1) => p1.currentDevice,
                      builder: (context, _, __) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ...List.generate(devices.length, (index) {
                              return CustomButton(
                                pressed: currentState.currentDevice ==
                                        devices[index].device
                                    ? Pressed.pressed
                                    : Pressed.notPressed,
                                animate: true,
                                shadowColor: Colors.white,
                                borderRadius: 100,
                                isThreeD: true,
                                backgroundColor: Colors.black,
                                width: 40 * theme.widthRatio,
                                height: 40 * theme.widthRatio,
                                onPressed: () {
                                  currentState.changeSelectedDevice(
                                    devices[index].device,
                                  );
                                },
                                child: Center(
                                  child: Icon(
                                    devices[index].icon,
                                    color: Colors.white,
                                    size: 30 * theme.widthRatio,
                                  ),
                                ),
                              );
                            })
                          ],
                        );
                      })
            ],
          ),
        ],
      ),
    );
  }
}
