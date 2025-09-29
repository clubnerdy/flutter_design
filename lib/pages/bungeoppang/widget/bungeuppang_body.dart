import 'package:flutter/material.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_filter.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_search_box.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BungeuppangBody extends StatefulWidget {
  const BungeuppangBody({
    super.key,
  });

  @override
  State<BungeuppangBody> createState() => _BungeuppangBodyState();
}

class _BungeuppangBodyState extends State<BungeuppangBody> {
  final CameraPosition _initial = const CameraPosition(
    target: LatLng(37.4979, 127.0276), // 강남역 좌표
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
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: _initial,
          markers: _markers,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
        ),
        BungeoppangSearchBox(),
        BungeoppangFilter(),
        Positioned(
          bottom: 12,
          right: 0,
          left: 0,
          child: SizedBox(
            height: 180,
            child: CarouselView(
              itemExtent: 320,
              shrinkExtent: 300,
              children: [
                Container(
                  decoration: BoxDecoration(color: Color(0xFF222222)),
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentGeometry.topLeft,
                        child: Container(
                          width: 40,
                          height: 40,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 2,
                              children: [
                                Text(
                                  '#붕어빵',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'HODU BOOM (강남역 2호점)',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xFF555555),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                                  child: Text(
                                    '최근 방문 26명',
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
