import 'package:flutter/material.dart';

///This module mimics the map of the ONDC app user. For static puposes the map background is an image.

class MapImage extends StatelessWidget {
  const MapImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/map_image3.png',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
