import 'package:flutter/material.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_body.dart';

class NaverPayPage extends StatelessWidget {
  const NaverPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NaverPayBody(),
      backgroundColor: Color(0xFF0E121A),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('스캔하기 버튼 클릭됨'),
        child: Image.asset(
          'assets/naverpay/icon-camera.png',
          height: 30,
        ),
        backgroundColor: Color(0xFF00DE5A),
        shape: CircleBorder(),
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 66,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                onTap: () => print('자산·송금 클릭됨'),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/naverpay/icon-wallet.png',
                      height: 20,
                    ),
                    Text(
                      '자산·송금',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => print('혜택 클릭됨'),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/naverpay/icon-gift.png',
                      height: 20,
                    ),
                    Text(
                      '혜택',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: InkWell(
                onTap: () => print('증권 클릭됨'),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/naverpay/icon-chart.png',
                      height: 20,
                    ),
                    Text(
                      '증권',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => print('부동산 클릭됨'),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/naverpay/icon-home.png',
                      height: 20,
                    ),
                    Text(
                      '부동산',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
