import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BungeoppangGooglemap extends StatefulWidget {
  const BungeoppangGooglemap({
    super.key,
  });

  @override
  State<BungeoppangGooglemap> createState() => _BungeoppangGooglemapState();
}

class _BungeoppangGooglemapState extends State<BungeoppangGooglemap> {
  final CameraPosition _initial = const CameraPosition(
    target: LatLng(37.4979, 127.0276),
    zoom: 15,
  );

  GoogleMapController? _controller;
  final Set<Marker> _markers = {};
  BitmapDescriptor? _inactiveIcon;
  BitmapDescriptor? _activeIcon;

  @override
  void initState() {
    super.initState();
    _loadMarkerIcons();
  }

  Future<void> _loadMarkerIcons() async {
    final inactive = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(24, 24)),
      'assets/bungeoppang/inactive-marker-m.png',
    );
    final active = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(24, 24)),
      'assets/bungeoppang/active-marker-m.png',
    );

    setState(() {
      _inactiveIcon = inactive;
      _activeIcon = active;
      _setFixedMarkers();
    });
  }

  void _setFixedMarkers() {
    if (_inactiveIcon == null || _activeIcon == null) return;

    _markers.addAll([
      Marker(
        markerId: const MarkerId('point1'),
        position: const LatLng(37.498095, 127.027610),
        icon: _inactiveIcon!,
      ),
      Marker(
        markerId: const MarkerId('point2'),
        position: const LatLng(37.497500, 127.028000),
        icon: _activeIcon!,
      ),
      Marker(
        markerId: const MarkerId('point3'),
        position: const LatLng(37.498800, 127.026800),
        icon: _inactiveIcon!,
      ),
      Marker(
        markerId: const MarkerId('point4'),
        position: const LatLng(37.497200, 127.027200),
        icon: _inactiveIcon!,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _initial,
      markers: _markers,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
    );
  }
}
