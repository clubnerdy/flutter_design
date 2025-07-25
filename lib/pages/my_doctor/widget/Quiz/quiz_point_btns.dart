import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuizPointBtns extends StatelessWidget {
  const QuizPointBtns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color(0xFFDDDDDD),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 52),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.checkCircle,
                    size: 18,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "그렇다",
                    style: TextStyle(
                      color: Color(0xFF444444),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color(0xFFDDDDDD),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 52),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.xmarkCircle,
                    size: 18,
                    color: Colors.red,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "아니다",
                    style: TextStyle(
                      color: Color(0xFF444444),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
