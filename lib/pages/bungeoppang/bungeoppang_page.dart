import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BungeoppangPage extends StatelessWidget {
  const BungeoppangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(37.4979, 127.0276), // 강남역 좌표
            zoom: 15,
          ),
        ),
        Positioned(
          child: Container(),
        ),
      ],
    );
  }
}
