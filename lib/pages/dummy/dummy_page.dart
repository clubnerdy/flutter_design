import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Map 테스트")),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.4979, 127.0276), // 강남역 좌표
          zoom: 15,
        ),
      ),
    );
  }
}
