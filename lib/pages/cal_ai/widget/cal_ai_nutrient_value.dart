import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalAiNutrientValue extends StatelessWidget {
  final String imageName;
  final int value;

  const CalAiNutrientValue({
    super.key,
    required this.imageName,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/calai/${imageName}.svg',
          width: 20,
        ),
        Text(
          '${value}g',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
