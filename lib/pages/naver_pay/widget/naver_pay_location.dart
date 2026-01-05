import 'package:flutter/material.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_location_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NaverPayLocation extends StatelessWidget {
  const NaverPayLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 6,
                    children: [
                      Text(
                        '중구 태평로1가',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF14D86B),
                        ),
                      ),
                      Image.asset(
                        'assets/naverpay/icon-location.png',
                        width: 18,
                      ),
                    ],
                  ),
                  Text(
                    '여기서 이용할 수 있어요',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () => print('전체보기 버튼 클릭'),
                child: Row(
                  spacing: 4,
                  children: [
                    Text(
                      '전체보기',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF888888),
                      ),
                    ),
                    FaIcon(
                      FontAwesomeIcons.angleRight,
                      color: Color(0xFF888888),
                      size: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              NaverPayLocationItem(
                imageName: 'image-onjeom.png',
                title: '온점 을지로점',
                distance: 233,
                countReview: '1,235',
              ),
              NaverPayLocationItem(
                imageName: 'image-dunkin.png',
                title: '던킨 시청역점',
                distance: 261,
                countReview: '10,994',
              ),
              NaverPayLocationItem(
                imageName: 'image-paper.png',
                title: '페이퍼마쉐',
                distance: 329,
                countReview: '5,885',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
