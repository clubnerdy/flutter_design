import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NaverPayPage extends StatelessWidget {
  const NaverPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0E121A),
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/naverpay/icon-white.png',
          width: 68,
        ),
        actionsPadding: EdgeInsetsGeometry.symmetric(horizontal: 16),
        actions: [
          InkWell(
            onTap: () => print('결제내역 이동'),
            child: Container(
              width: 66,
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(4),
                border: Border.all(
                  width: 1,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                '결제내역',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          InkWell(
            onTap: () => print('알림 이동'),
            child: Container(
              width: 28,
              height: 28,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/naverpay/icon-bell.svg',
                width: 24,
                height: 24,
              ),
            ),
          ),
          SizedBox(width: 16),
          InkWell(
            onTap: () => print('메뉴 토글 작동'),
            child: Container(
              width: 28,
              height: 28,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/naverpay/icon-navi.svg',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
      ),
      body: Placeholder(),
      backgroundColor: Color(0xFF0E121A),
    );
  }
}
