import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OlyoungItem extends StatelessWidget {
  const OlyoungItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 14,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('assets/olyoung/item-image.png'),
        ),
        Column(
          spacing: 4,
          children: [
            Text(
              '[NEW/1+1] 토리든 셀메이징 저분자 콜라겐 볼륨 립 에센스 11ml더블 기획',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Text(
                  '12,000',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Color(0xFF9BA3AA),
                  ),
                ),
                Text(
                  '원',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Color(0xFF9BA3AA),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 6,
              children: [
                Text(
                  '20%',
                  style: TextStyle(
                    color: Color(0xFFFF5754),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                  ),
                ),
                Text(
                  '9,600원',
                  style: TextStyle(
                    color: Color(0xFF010101),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              spacing: 4,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFF0F1F4),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Text(
                    '오늘드림',
                    style: TextStyle(
                      color: Color(0xFFE95395),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFF0F1F4),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Text(
                    '증정',
                    style: TextStyle(
                      color: Color(0xFF565A5F),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ), //라벨
            Row(
              spacing: 4,
              children: [
                SvgPicture.asset(
                  'assets/olyoung/icon-star.svg',
                  width: 10,
                ),
                Text(
                  '4.8',
                  style: TextStyle(
                    color: Color(0xFFB3B8BE),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '(2,225)',
                  style: TextStyle(
                    color: Color(0xFFB3B8BE),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          spacing: 20,
          children: [
            InkWell(
              onTap: () => print('좋아요 탭'),
              child: SvgPicture.asset(
                'assets/olyoung/icon-heart-unactive.svg',
                width: 20,
              ),
            ),
            InkWell(
              onTap: () => print('장바구니 탭'),
              child: SvgPicture.asset(
                'assets/olyoung/icon-bag-alternative.svg',
                width: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
