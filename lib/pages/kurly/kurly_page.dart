import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                            color: Color(0xFF666666),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              spacing: 14,
                              children: [
                                ClipRRect(
                                  // TODO: 이미지 위젯으로 변경
                                  child: Container(
                                    width: 68,
                                    height: 86,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('샛별배송'),
                                    Text('상품명'),
                                    Text('상품명'),
                                    Row(
                                      children: [
                                        Text('data'),
                                        Text('data'),
                                        Text('data'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
              child: Image.asset('assets/kurly/icon-kart.png'),
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
