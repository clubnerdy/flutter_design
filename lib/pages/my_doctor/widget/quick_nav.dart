import 'package:flutter/material.dart';

class QuickNav extends StatelessWidget {
  const QuickNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 72,
                  child: Image.asset("assets/location_1.png"),
                ),
                SizedBox(height: 16),
                Text(
                  "약국 찾기",
                  style: TextStyle(
                    color: Color(0xFF444444),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 64,
                  child: Image.asset("assets/baby.png"),
                ),
                SizedBox(height: 16),
                Text(
                  "우리 아이\n건강 기록",
                  style: TextStyle(
                    color: Color(0xFF444444),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  child: Image.asset("assets/coin.png"),
                ),
                SizedBox(height: 16),
                Text(
                  "리워드 1등\n만보기",
                  style: TextStyle(
                    color: Color(0xFF444444),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
