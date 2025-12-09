import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class DummyPage extends StatefulWidget {
  const DummyPage({super.key});

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  late Future<void> _initFuture;

  @override
  void initState() {
    super.initState();
    _initFuture = _initKakao();
  }

  Future<void> _initKakao() async {
    try {
      await dotenv.load(fileName: '.env');
      final kakaoKey = dotenv.env['KAKAO_JS_KEY'];
      if (kakaoKey == null || kakaoKey.isEmpty) {
        throw Exception('KAKAO_JS_KEY가 .env에 없거나 비어 있음');
      }
      AuthRepository.initialize(appKey: kakaoKey);
    } catch (e, s) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    print('🔥 DummyPage build');
    return Scaffold(
      appBar: AppBar(title: const Text('카카오맵 테스트')),
      body: FutureBuilder<void>(
        future: _initFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(
                '초기화 실패:\n${snapshot.error}',
                textAlign: TextAlign.center,
              ),
            );
          }

          return KakaoMap(
            center: LatLng(35.1796, 129.0756),
          );
        },
      ),
    );
  }
}
