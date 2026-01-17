import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_week.dart';

class CalAiBody extends StatelessWidget {
  const CalAiBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CalAiWeek(),
        ],
      ),
    );
  }
}
