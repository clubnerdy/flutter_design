import 'package:flutter/material.dart';
import 'package:flutter_design/pages/my_doctor/widget/Quiz/quiz_description.dart';
import 'package:flutter_design/pages/my_doctor/widget/Quiz/quiz_point_btns.dart';
import 'package:flutter_design/pages/my_doctor/widget/Quiz/quiz_title.dart';

class QuizPoint extends StatelessWidget {
  const QuizPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          children: [
            QuizTitle(),
            SizedBox(height: 16),
            QuizDescription(),
            SizedBox(height: 16),
            QuizPointBtns(),
          ],
        ),
      ),
    );
  }
}
