import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_detail_item.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_detail_top.dart';
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
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  spacing: 12,
                  children: [
                    kurlyDetailTop(),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFCDCDCD),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 16,
                      children: [
                        Text(
                          '취소완료',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF393939),
                          ),
                        ),
                        Column(
                          children: [
                            KurlyDetailItem(
                              imageUrl: '',
                              label: '샛별배송',
                              itemName: '[KF365] 호박고구마 800g/봉',
                              description: '[KF365] 호박고구마 800g (25년 햇)',
                              curruntPrice: '5,990',
                              price: '7,690',
                              count: 1,
                            ),
                          ],
                        ),
                      ],
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

  AppBar _appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
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
