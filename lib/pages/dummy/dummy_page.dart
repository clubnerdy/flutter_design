import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liquid Glass 테스트")),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // This is the content that will be behind the glass
          Positioned.fill(
            child: Image.network(
              'https://picsum.photos/seed/glass/800/800',
              fit: BoxFit.cover,
            ),
          ),
          // The LiquidGlass widget sits on top
          Center(
            child: const SizedBox(
              height: 200,
              width: 200,
              child: Center(
                child: FlutterLogo(size: 100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
