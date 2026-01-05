import 'package:flutter/material.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_location_item.dart';

class NaverPayLocationList extends StatelessWidget {
  const NaverPayLocationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
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
    );
  }
}
