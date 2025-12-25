import 'package:flutter/material.dart';

class kurlyDetailTop extends StatelessWidget {
  const kurlyDetailTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2,
          children: [
            Text(
              '2025.09.19',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 4,
              children: [
                Text(
                  '주문번호',
                  style: TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '2391414470094',
                  style: TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset('assets/kurly/icon-copy-fill.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 32,
          height: 32,
          child: Image.asset('assets/kurly/icon-arrow-right.png'),
        ),
      ],
    );
  }
}
