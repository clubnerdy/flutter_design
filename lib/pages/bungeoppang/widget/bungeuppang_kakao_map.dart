import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class BungeuppangKakaoMap extends StatefulWidget {
  const BungeuppangKakaoMap({super.key});

  @override
  State<BungeuppangKakaoMap> createState() => _BungeuppangKakaoMapState();
}

class _BungeuppangKakaoMapState extends State<BungeuppangKakaoMap> {
  late Future<void> _initFuture;

  @override
  void initState() {
    super.initState();
    _initFuture = _initKakao();
  }

  Future<void> _initKakao() async {
    if (dotenv.env.isEmpty) {
      await dotenv.load(fileName: 'assets/.env');
    }

    final kakaoKey = dotenv.env['KAKAO_JS_KEY'] ?? '';

    AuthRepository.initialize(appKey: kakaoKey);
  }

  @override
  Widget build(BuildContext context) {
    return KakaoMap(
      center: LatLng(35.1796, 129.0756),
    );
  }
}
