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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            ///Map component
            const MapImage(),

            ///Gradient
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0.0)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.7, 1]),
              ),
            ),

            Column(
              children: [
                const Spacer(flex: 90),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Spacer(flex: 20),

                  ///Back button
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
                  const Spacer(flex: 64),

                  ///Hotel details
                  Column(
                    children: [
                      Text('THE RAJPUT ROOM',
                          style: GoogleFonts.jetBrainsMono(
                              fontSize: 15,
                              letterSpacing: 2.4,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      const Text('Rambagh Palace',
                          style: TextStyle(
                              fontFamily: 'PPMori',
                              fontSize: 13,
                              color: Color(0x80000000)))
                    ],
                  ),
                  const Spacer(flex: 150),
                ]),
                const Spacer(flex: 35),

                ///Item details
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 30),
                  child: Row(
                    children: [
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
                      const Spacer(flex: 15),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '03 Items',
                            style: TextStyle(
                                fontFamily: 'PPMori',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Change',
                            style: TextStyle(
                                fontFamily: 'PPMori',
                                fontSize: 10,
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.dashed,
                                color: Color(0xB2000000)),
                          )
                        ],
                      ),
                      const Spacer(flex: 155),
                      const Text(
                        'Rs. 375',
                        style: TextStyle(
                            fontFamily: 'PPMori',
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 20),
                const Divider(
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                ),
                const Spacer(flex: 20),

                ///Delivery and locality details
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('DELIVERY FEE',
                                style: GoogleFonts.jetBrainsMono(
                                    fontSize: 13,
                                    letterSpacing: 2.4,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(height: 10),
                            const Text(
                                'Rambagh Palace, H-1B, Azkaban Facility for Muggles, 304098',
                                style: TextStyle(
                                    fontFamily: 'PPMori',
                                    fontSize: 12,
                                    color: Color(0xB2000000))),
                            const SizedBox(height: 5),
                            const Text(
                              'Change',
                              style: TextStyle(
                                  fontFamily: 'PPMori',
                                  fontSize: 11,
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.dashed,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        'Rs. 30',
                        style: TextStyle(
                            fontFamily: 'PPMori',
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 20),
                const Divider(
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                ),
                const Spacer(flex: 20),

                ///Taxes and other expenses
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('TAXES AND CHARGES',
                                style: GoogleFonts.jetBrainsMono(
                                    fontSize: 13,
                                    letterSpacing: 2.4,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(height: 10),
                            const Text(
                                'Some info about taxes and service charges for transparency',
                                style: TextStyle(
                                    fontFamily: 'PPMori',
                                    fontSize: 12,
                                    color: Color(0xB2000000))),
                          ],
                        ),
                      ),
                      const Text(
                        'Rs. 30',
                        style: TextStyle(
                            fontFamily: 'PPMori',
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 20),
                const Divider(
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                ),

                ///Final pay amount
                const Spacer(flex: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('TO PAY',
                          style: GoogleFonts.jetBrainsMono(
                              fontSize: 13,
                              letterSpacing: 2.4,
                              fontWeight: FontWeight.bold)),
                      const Text(
                        'Rs. 475',
                        style: TextStyle(
                            fontFamily: 'PPMori',
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 20),
                const Divider(
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                ),
                const Spacer(flex: 94),

                ///Delivery time details
                Text(
                  'ESTIMATED DELIVERY TIME',
                  style: GoogleFonts.jetBrainsMono(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 2),
                ),
                const Spacer(flex: 4),
                const Text(
                  '25 Min',
                  style: TextStyle(
                      fontFamily: 'PPEditorial',
                      fontStyle: FontStyle.italic,
                      letterSpacing: -0.6,
                      fontSize: 22,
                      fontWeight: FontWeight.w200),
                ),
                const Spacer(flex: 94),
                ///Blurred button
                SizedBox(
                  height: 40,
                  width: 200,
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
                      InkWell(
                        onTap: () {
                          print('ETHYOOOO');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'PROCEED TO PAY',
                                style: GoogleFonts.jetBrainsMono(
                                    fontSize: 12,
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
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(flex: 35),
              ],
            )
          ],
        ),
      ),
    );
  }
}
