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
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.transparent),
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                        size: 12.5,
                      )),
                  Column(
                    children: [
                      Text('THE RAJPUT ROOM',
                          style: GoogleFonts.jetBrainsMono(fontSize: 12)),
                      const Text('Rambagh Palace',
                          style: TextStyle(fontFamily: 'PPMori', fontSize: 10))
                    ],
                  )
                ]),
                const Row(
                  children: [Text('item row')],
                ),
                const Row(
                  children: [Text('delivery fee row')],
                ),
                const Row(
                  children: [Text('tax row')],
                ),
                const Row(
                  children: [Text('pay row')],
                ),
                const Text('delivery time'),
                const Text('time'),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Proceed to pay'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
