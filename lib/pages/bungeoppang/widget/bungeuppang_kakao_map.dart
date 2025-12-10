import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class BungeuppangKakaoMap extends StatefulWidget {
  const BungeuppangKakaoMap({super.key});

  @override
  State<BungeuppangKakaoMap> createState() => _BungeuppangKakaoMapState();
}

class _BungeuppangKakaoMapState extends State<BungeuppangKakaoMap> {
  int selectedIndex = 0;

  final List<LatLng> markerPositions = [
    LatLng(37.4979, 127.0276),
    LatLng(37.4985, 127.0280),
    LatLng(37.4968, 127.0265),
    LatLng(37.4972, 127.0258),
    LatLng(37.4982, 127.0249),
  ];

  MarkerIcon? activeIcon;
  MarkerIcon? inactiveIcon;

  bool _mapReady = false;

  @override
  void initState() {
    super.initState();
    _loadMarkerIcons();
  }

  Future<void> _loadMarkerIcons() async {
    activeIcon = await MarkerIcon.fromAsset('assets/bungeoppang/active-marker-s.png');
    inactiveIcon = await MarkerIcon.fromAsset('assets/bungeoppang/inactive-marker-s.png');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (activeIcon == null || inactiveIcon == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return KakaoMap(
      center: markerPositions[selectedIndex],
      onMapCreated: (controller) {
        if (!_mapReady) {
          _mapReady = true;
          setState(() {});
        }
      },

      markers: List.generate(markerPositions.length, (index) {
        final isActive = selectedIndex == index;

        return Marker(
          markerId: 'marker_$index',
          latLng: markerPositions[index],
          width: 36,
          height: 36,
          offsetX: 24,
          offsetY: 48,
          icon: isActive ? activeIcon : inactiveIcon,
        );
      }),
    );
  }
}
