import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_order_item.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_salt_container.dart';

class KurlyPage extends StatelessWidget {
  const KurlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: _appbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KurlySaltContainer(),
            Container(
              width: double.infinity,
              color: Color(0xFFF2F5F8),
              padding: EdgeInsets.all(16),
              child: Column(
                spacing: 12,
                children: [
                  KurlyOrderItem(),
                  KurlyOrderItem(),
                  KurlyOrderItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      scrolledUnderElevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          width: 60,
          height: 60,
          child: Icon(Icons.arrow_back_ios_new_sharp),
        ),
      ),
      title: Text(
        '주문 내역',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xFF222222),
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            // 홈으로 이동
          },
          child: SizedBox(
            width: 32,
            height: 32,
            child: Image.asset('assets/kurly/icon-home.png'),
          ),
        ),
        SizedBox(width: 8),
        InkWell(
          onTap: () {
            // 장바구니로 이동
          },
          child: Container(
            width: 32,
            height: 32,
            alignment: Alignment(0, 0),
            child: Badge(
              label: Text(
                '2',
                style: TextStyle(fontSize: 14),
              ),
              backgroundColor: Color(0xFF222222),
              padding: EdgeInsets.all(0),
              offset: Offset(4, -8),
              child: Image.asset('assets/kurly/icon-cart.png'),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
