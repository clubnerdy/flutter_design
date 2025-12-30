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
                            color: Color(0xFF393939),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 14,
                              children: [
                                ClipRRect(
                                  // TODO: 이미지 위젯으로 변경
                                  child: Container(
                                    width: 64,
                                    height: 82,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 4,
                                    children: [
                                      Text(
                                        '샛별배송',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFAEAEAE),
                                        ),
                                      ),
                                      Text(
                                        '[KF365] 호박고구마 800g/봉',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF333333),
                                        ),
                                      ),
                                      Text(
                                        '[KF365] 호박고구마 800g (25년 햇)',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFAEAEAE),
                                        ),
                                      ),
                                      Row(
                                        spacing: 6,
                                        children: [
                                          Text(
                                            '5,990원',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF222222),
                                            ),
                                          ),
                                          Text(
                                            '7,690원',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFC3C3C3),
                                              decoration: TextDecoration.lineThrough,
                                              decorationColor: Color(0xFFC3C3C3),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 14,
                                            child: VerticalDivider(
                                              width: 2,
                                              thickness: 1,
                                              color: Color(0xFFEFEFEF),
                                            ),
                                          ),
                                          Text(
                                            '1개',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF222222),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(width: 1, color: Color(0xFFCECECE)),
                                    ),
                                    child: Image.asset(
                                      'assets/kurly/icon-cart-samll.png',
                                    ),
                                  ),
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
