import 'package:flutter/material.dart';

class QuizDescription extends StatelessWidget {
  const QuizDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Q.",
          style: TextStyle(
            color: Color(0xFF4483FE),
            fontSize: 20,
            fontWeight: FontWeight.w600,
            height: 1.2,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
          child: Text(
            "운동과 반신욕 등으로 혈액순환을 돕는 것은 수족냉증 완화에 도움이 된다.",
            style: TextStyle(
              color: Color(0xFF444444),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
