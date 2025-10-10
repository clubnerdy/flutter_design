import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DaangnPage extends StatelessWidget {
  const DaangnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {},
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF000000),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: SizedBox(
            height: 56,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('확인'),
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      title: Text(
        '내 물건 팔기',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            '임시저장',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xFF888888),
            ),
          ),
        ),
      ],
      shape: Border(
        bottom: BorderSide(
          color: Color(0xFFE1E1E1),
          width: 1,
        ),
      ),
    );
  }
}
