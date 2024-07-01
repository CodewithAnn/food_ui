import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

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
                        'assets/fastfood.svg',
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
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      // color: Colors.green,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text:
                                      'Foodie is Where Your Comfort Food Resides',
                                  style: GoogleFonts.openSans(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                ),
                                // TextSpan(
                                //   text: '\nComfort Food Resides',
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
                          const SizedBox(height: 16.0),
                          Expanded(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text:
                                      'Enjoy a fast and smooth food delivery at your doorstep',
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
                      onPressed: () {}, child: const Text("Next")),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
