import 'package:flutter/material.dart';
import 'package:flutter_design/pages/bungeoppang/bungeoppang_page.dart';
import 'package:flutter_design/pages/daangn/daangn_page.dart';
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
        '/daangn': (context) => const DaangnPage(),
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
      backgroundColor: Color(0xFFE1E1E1),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: GridView.count(
          crossAxisCount: 5,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.6,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/myDoctor');
                        },
                        child: Image.asset(
                          'assets/mydoc/app-icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  '나만의닥터',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/kkaebiz');
                        },
                        child: Image.asset(
                          'assets/kkaebiz/app-icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  '깨비즈',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/bungeo');
                        },
                        child: Image.asset(
                          'assets/bungeoppang/app-icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  '붕어빵',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/nhrtalk');
                        },
                        child: Image.asset(
                          'assets/nhr/app-icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  '커리어톡',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/daangn');
                        },
                        child: Image.asset(
                          'assets/daangn/app-icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  '당근마켓',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/test');
                        },
                        child: Image.asset(
                          'assets/app-icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  '테스트',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
