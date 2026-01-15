import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NaverPayPiont extends StatelessWidget {
  const NaverPayPiont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            '쓸수록 쌓이는 결제',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF00DE5A),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      '3개월동안 받은 혜택',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 6,
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xFF000000),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'N',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Text(
                          '0원',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  spacing: 12,
                  children: [
                    InkWell(
                      onTap: () => print('뽑을 수 있는 포인트 클릭됨'),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xB3000000),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '뽑을 수 있는 포인트',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                Text(
                                  '0개',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.angleRight,
                                  size: 12,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => print('뽑을 수 있는 스탬프 클릭됨'),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xB3000000),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '뽑을 수 있는 스탬프',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                Text(
                                  '0개',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.angleRight,
                                  size: 12,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
