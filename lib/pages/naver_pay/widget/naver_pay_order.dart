import 'package:flutter/material.dart';

class NaverPayOrder extends StatelessWidget {
  const NaverPayOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 16,
        children: [
          Row(
            children: [
              Text(
                '네이버주문',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF14D86B),
                ),
              ),
              Text(
                '으로 미리 주문',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF24282C),
            ),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => print('주변 매장찾기 클릭됨'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 16,
                      children: [
                        Image.asset(
                          'assets/naverpay/logo-starbucks.png',
                          height: 30,
                        ),
                        Text(
                          '주변 매장 찾기',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(
                  thickness: 1,
                  width: 20,
                  color: Color(0xFF888888),
                  indent: 64,
                  endIndent: 64,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => print('주문내역 보기 클릭됨'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 16,
                      children: [
                        Image.asset(
                          'assets/naverpay/image-reciep.png',
                          height: 30,
                        ),
                        Text(
                          '주문내역 보기',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
