import 'package:flutter/material.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_body.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_custom_nav_bar.dart';

class NaverPayPage extends StatelessWidget {
  const NaverPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NaverPayBody(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: NaverPayCustomNavBar(),
          ),
        ],
      ),
      backgroundColor: Color(0xFF0E121A),
    );
  }
}
