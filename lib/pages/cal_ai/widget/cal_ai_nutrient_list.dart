import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_nutrient.dart';

class CalAiNutrientList extends StatelessWidget {
  const CalAiNutrientList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CalAiNutrient(
          value: 105,
          name: 'Protein left',
          imageName: 'icon-protein',
          displayColor: Color(0xFFDE6A67),
          percentValue: 38,
        ),
        CalAiNutrient(
          value: 129,
          name: 'Carbs left',
          imageName: 'icon-carbs',
          displayColor: Color(0xFFE09A6B),
          percentValue: 49,
        ),
        CalAiNutrient(
          value: 22,
          name: 'Fat',
          emphasisName: 'over',
          imageName: 'icon-fat',
          displayColor: Color(0xFF6A99DF),
          percentValue: 100,
        ),
      ],
    );
  }
}
