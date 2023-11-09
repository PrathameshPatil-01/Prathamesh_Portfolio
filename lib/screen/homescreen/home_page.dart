import 'package:auto_size_text/auto_size_text.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_portfolio/consts/data.dart';
import 'package:pp_portfolio/providers/current_state.dart';
import 'package:pp_portfolio/providers/theme_provider.dart';
import 'package:pp_portfolio/widgets/frosted_container.dart';
import 'package:pp_portfolio/widgets/rain_cloud.dart';
import 'package:provider/provider.dart';

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
    if (size.width < 900) {
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
          size.height > 600
              ? const Rain(
                  oposite: false,
                  top: 150,
                )
              : Container(),
          Selector<CurrentState, String>(
            selector: (context, provider) => provider.selectedCloud,
            builder: (context, _, __) {
              return SvgPicture.asset(
                currentState.selectedCloud,
                // width: double.infinity,
                height: size.height,
                fit: BoxFit.cover,
              );
            },
          ),
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
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01)
                                ..rotateY(-0.06),
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 10 * theme.heightRatio),
                                child: FrostedWidget(
                                  childW: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..setEntry(3, 2, 0.01)
                                        ..rotateY(-0.06),
                                      alignment: FractionalOffset.center,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: AutoSizeText(
                                                  ' Prathamesh ',
                                                  style: GoogleFonts.exo(
                                                      fontSize: 25,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  maxFontSize: 25,
                                                  minFontSize: 10,
                                                  maxLines: 1,
                                                ).animate().fadeIn(
                                                    delay: .8.seconds,
                                                    duration: .7.seconds),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  height: 395 * theme.heightRatio,
                                  width: 247.5 * theme.widthRatio,
                                ),
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
                        height: size.height * 0.8,
                        width: phone ? null : size.width * 0.3,
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
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01)
                                ..rotateY(0.06),
                              alignment: Alignment.bottomCenter,
                              child: FrostedWidget(
                                height: 395 * theme.heightRatio,
                                width: 247.5 * theme.widthRatio,
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
                                width: 37.5,
                                height: 37.5,
                                onPressed: () {
                                  currentState.changeSelectedDevice(
                                    devices[index].device,
                                  );
                                },
                                child: Center(
                                  child: Icon(
                                    devices[index].icon,
                                    color: Colors.white,
                                    size: 25,
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
                                borderRadius: 100,
                                isThreeD: true,
                                backgroundColor: Colors.black,
                                width: 37.5,
                                height: 37.5,
                                onPressed: () {
                                  currentState.changeSelectedDevice(
                                    devices[index].device,
                                  );
                                },
                                child: Center(
                                  child: Icon(
                                    devices[index].icon,
                                    color: Colors.white,
                                    size: 25,
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
