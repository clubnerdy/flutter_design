import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_nutrient_value.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalAiUploadedItem extends StatelessWidget {
  final String? imageName;
  final String title;
  final String time;
  final int caloriesValue;
  final int proteinValue;
  final int carbsCValue;
  final int fatValue;

  const CalAiUploadedItem({
    super.key,
    this.imageName,
    required this.title,
    required this.time,
    required this.caloriesValue,
    required this.proteinValue,
    required this.carbsCValue,
    required this.fatValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF8F8FC),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A818181),
            blurRadius: 10.0,
            spreadRadius: 1,
            offset: Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          imageName != null
              ? Image.asset(
                  'assets/calai/${imageName}.png',
                  width: 128,
                  height: 150,
                  fit: BoxFit.cover,
                )
              : SizedBox(),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 18,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      SvgPicture.asset('assets/calai/icon-fire.svg'),
                      Text(
                        '${caloriesValue} Calories',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 12,
                    children: [
                      CalAiNutrientValue(
                        imageName: 'icon-protein',
                        value: proteinValue,
                      ),
                      CalAiNutrientValue(
                        imageName: 'icon-carbs',
                        value: carbsCValue,
                      ),
                      CalAiNutrientValue(
                        imageName: 'icon-fat',
                        value: fatValue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
