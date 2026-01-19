import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalAiNutrient extends StatelessWidget {
  final int value;
  final String name;
  final String? emphasisName;
  final double percentValue;
  final String imageName;
  final Color displayColor;

  const CalAiNutrient({
    super.key,
    required this.value,
    required this.name,
    this.emphasisName,
    required this.percentValue,
    required this.imageName,
    required this.displayColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
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
        child: Column(
          spacing: 16,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${value}g',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    spacing: 2,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      emphasisName != null
                          ? Text(
                              emphasisName!,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          : Text(''),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 70,
              height: 70,
              child: Stack(
                children: [
                  PieChart(
                    PieChartData(
                      startDegreeOffset: -90,
                      sectionsSpace: 0,
                      centerSpaceRadius: 28,
                      sections: [
                        PieChartSectionData(
                          value: percentValue,
                          color: displayColor,
                          radius: 7,
                          showTitle: false,
                        ),
                        PieChartSectionData(
                          value: 100 - percentValue,
                          color: Color(0xFFEFF1F6),
                          radius: 7,
                          showTitle: false,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 19,
                    left: 19,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF8F9FD),
                      ),
                      padding: EdgeInsets.all(6),
                      child: SvgPicture.asset('assets/calai/${imageName}.svg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
