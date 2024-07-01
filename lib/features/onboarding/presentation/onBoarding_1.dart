// import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ui/features/onboarding/presentation/onBoarding2.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 240, 234, 210),
            child: Column(
              children: [
                // Image
                Flexible(
                  flex: 7,
                  fit: FlexFit.tight,
                  child: Align(
                    alignment: const Alignment(0.40, -0.60),
                    child: Container(
                      padding: EdgeInsets.only(left: 16.0),
                      alignment: Alignment.center,
                      // color: Colors.red,
                      child: SvgPicture.asset(
                        'assets/chukaman.svg',
                        height: 300,
                        width: 200,
                      ),
                    ),
                  ),
                ),
                //text
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Align(
                    alignment: const Alignment(0.30, -0.50),
                    child: Container(
                      alignment: Alignment.center,
                      // color: Colors.green,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'Take your comfort Food here',
                                  style: GoogleFonts.openSans(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                ),
                                // TextSpan(
                                //   text: '\nFood here',
                                //   style: GoogleFonts.openSans(
                                //     textStyle: Theme.of(context)
                                //         .textTheme
                                //         .headlineMedium,
                                //     fontWeight: FontWeight.bold,
                                //     fontSize: 35,
                                //   ),
                                // ),
                              ]),
                            ),
                          ),
                          // const SizedBox(height: 16.0),
                          Expanded(
                            flex: 2,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text:
                                      'Here You Can find a chef or dish for every taste and color. Enjoy!',
                                  style: GoogleFonts.openSans(
                                    textStyle:
                                        Theme.of(context).textTheme.bodySmall,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                ),
                                // TextSpan(
                                //   text: '\nevery taste and color. Enjoy!',
                                //   style: GoogleFonts.openSans(
                                //     textStyle:
                                //         Theme.of(context).textTheme.bodySmall,
                                //     fontWeight: FontWeight.normal,
                                //     fontSize: 12,
                                //   ),
                                // ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                //buttons
                Flexible(
                  flex: 2,
                  fit: FlexFit.loose,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnBoarding2(),
                            ));
                      },
                      child: const Text("Next")),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
