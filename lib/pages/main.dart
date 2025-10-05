import 'package:flutter/material.dart';
import 'package:flutter_design/pages/bungeoppang/bungeoppang_page.dart';
import 'package:flutter_design/pages/dummy/dummy_page.dart';
import 'package:flutter_design/pages/kkaebiz/kkaebiz_page.dart';
import 'package:flutter_design/pages/my_doctor/my_doctor_page.dart';
import 'package:flutter_design/pages/nhr_talk/nhr_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/myDoctor': (context) => const MyDoctorPage(),
        '/kkaebiz': (context) => const KkaebizPage(),
        '/bungeo': (context) => const BungeoppangPage(),
        '/nhrtalk': (context) => const NhrPage(),
        '/test': (context) => const DummyPage(),
      },
      debugShowCheckedModeBanner: false,
      home: NaviPage(),
    );
  }
}

class NaviPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: GridView.count(
          crossAxisCount: 5,
          crossAxisSpacing: 16,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/myDoctor');
                  },
                  child: Center(child: Text("나만의닥터")),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/kkaebiz');
                  },
                  child: Center(child: Text("깨비즈")),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/bungeo');
                  },
                  child: Center(child: Text("가슴 속 삼천원")),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/nhrtalk');
                  },
                  child: Center(child: Text("커리어 톡")),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/test');
                  },
                  child: Center(child: Text("테스트")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
