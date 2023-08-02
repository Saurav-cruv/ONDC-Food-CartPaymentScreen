import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ondc_cartpaymentscreen/widgets/map_module.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            const MapImage(),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0.0)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.6, 1]),
              ),
            ),
            Column(
              children: [
                const Spacer(flex: 70),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Spacer(),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.transparent),
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                        size: 12.5,
                      )),
                  const Spacer(),
                  Column(
                    children: [
                      Text('THE RAJPUT ROOM',
                          style: GoogleFonts.jetBrainsMono(
                              fontSize: 12, letterSpacing: 2.4)),
                      const Text('Rambagh Palace',
                          style: TextStyle(fontFamily: 'PPMori', fontSize: 10))
                    ],
                  ),
                  const Spacer(),
                ]),
                const Spacer(flex: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Container(
                      width: 70,
                      height: 70,
                      color: const Color(0xFF4200FF),
                      child: const Center(
                        child: Text(
                          '03',
                          style: TextStyle(
                              fontFamily: 'PPMori',
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Column(
                      children: [
                        Text(
                          '03 Items',
                          style: TextStyle(
                              fontFamily: 'PPMori',
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Change',
                          style: TextStyle(
                              fontFamily: 'PPMori',
                              fontSize: 10,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      'Rs. 375',
                      style: TextStyle(fontFamily: 'PPMori', fontSize: 12),
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(flex: 20),
                Row(
                  children: [
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DELIVERY FEE',
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 12, letterSpacing: 2.4)),
                        const Text(
                            'Rambagh Palace, H-1B, Azkaban Facility for Muggles, 304098',
                            style:
                                TextStyle(fontFamily: 'PPMori', fontSize: 12)),
                        const Text(
                          'Change',
                          style: TextStyle(
                              fontFamily: 'PPMori',
                              fontSize: 10,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      'Rs. 30',
                      style: TextStyle(fontFamily: 'PPMori', fontSize: 12),
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(flex: 20),
                Row(
                  children: [
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('TAXES AND CHARGES',
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 12, letterSpacing: 2.4)),
                        const Text(
                            'Some info about taxes and service charges for transparency',
                            style:
                                TextStyle(fontFamily: 'PPMori', fontSize: 12)),
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      'Rs. 30',
                      style: TextStyle(fontFamily: 'PPMori', fontSize: 12),
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(flex: 20),
                Row(
                  children: [
                    const Spacer(),
                    Text('TO PAY',
                        style: GoogleFonts.jetBrainsMono(
                            fontSize: 12, letterSpacing: 2.4)),
                    const Spacer(),
                    const Text(
                      'Rs. 475',
                      style: TextStyle(fontFamily: 'PPMori', fontSize: 12),
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(flex: 94),
                Text(
                  'ESTIMATED DELIVERY TIME',
                  style: GoogleFonts.jetBrainsMono(
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 2),
                ),
                const Text(
                  '25 Min',
                  style: TextStyle(
                      fontFamily: 'PPEditorial',
                      fontStyle: FontStyle.italic,
                      letterSpacing: -0.6,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                ),
                const Spacer(flex: 94),
                Container(
                  height: 33,
                  width: 173,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                              sigmaX: 2.0,
                              sigmaY: 2.0,
                              tileMode: TileMode.decal),
                          child: Container(
                              decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  color: const Color(
                                      0xFF0057FF))), // Widget that is blurred
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'PROCEED TO PAY',
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 10,
                                letterSpacing: 2,
                                color: Colors.white),
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white),
                            child: const Icon(Icons.arrow_right_alt_rounded,
                                color: Color(0xFF0057FF)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(flex: 27),
              ],
            )
          ],
        ),
      ),
    );
  }
}
