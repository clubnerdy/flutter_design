import 'package:flutter/material.dart';

class NaverPayLocationItem extends StatelessWidget {
  final String imageName;
  final String title;
  final int distance;
  final String countReview;

  const NaverPayLocationItem({
    super.key,
    required this.imageName,
    required this.title,
    required this.distance,
    required this.countReview,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        ClipRRect(
          //이미지
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/naverpay/${imageName}',
            width: 64,
            height: 64,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFFFFFFFF),
              ),
            ),
            Row(
              spacing: 3,
              children: [
                Text(
                  '${distance}m',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF14D86B),
                  ),
                ),
                Text(
                  '·',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFFFFFFFF),
                    height: 1,
                  ),
                ),
                Text(
                  '리뷰수 ${countReview}',
                  style: TextStyle(
                    color: Color(0xFF888888),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
