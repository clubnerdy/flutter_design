import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuizTitle extends StatelessWidget {
  const QuizTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFEBF5FF),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.gift,
                  size: 12,
                  color: Color(0xFF4483FE),
                ),
                SizedBox(width: 4),
                Text(
                  "매일 포인트박스 4개",
                  style: TextStyle(
                    color: Color(0xFF4483FE),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "힌트보기",
                style: TextStyle(
                  color: Color(0xFF9A9A9A),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Color(0xFF9A9A9A),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
