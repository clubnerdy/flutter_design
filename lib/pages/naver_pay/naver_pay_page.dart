import 'package:flutter/material.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_app_bar.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_card.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_event.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_persistent_header.dart';

class NaverPayPage extends StatelessWidget {
  const NaverPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NaverPayAppBar(),
          NaverPayPersistentHeader(),
          SliverToBoxAdapter(
            child: Column(
              spacing: 26,
              children: [
                NaverPayCard(),
                NaverPayEvent(),
                Container(
                  width: double.infinity,
                  height: 600,
                  color: Color(0xFF333333),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF0E121A),
    );
  }
}
