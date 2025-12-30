import 'package:flutter/material.dart';

class KurlyMoreBtn extends StatelessWidget {
  const KurlyMoreBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '총 4건 주문 펼쳐보기',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFFA9B2BB),
              ),
            ),
            Image.asset('assets/kurly/icon-arrow-down-gray.png'),
          ],
        ),
      ),
    );
  }
}
