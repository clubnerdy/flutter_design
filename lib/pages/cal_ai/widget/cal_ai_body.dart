import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_calories.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_nutrient_list.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_slider.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_week.dart';

class CalAiBody extends StatelessWidget {
  const CalAiBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [
          CalAiWeek(),
          Column(
            children: [
              CalAiSlider(),
            ],
          ),
        ],
      ),
    );
  }
}
