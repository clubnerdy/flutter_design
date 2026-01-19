import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalAiCalories extends StatelessWidget {
  const CalAiCalories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '738',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w700,
                    ),
                    textHeightBehavior: TextHeightBehavior(
                      applyHeightToLastDescent: false,
                    ),
                  ),
                  Text(
                    'Calories left',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 6,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      spacing: 4,
                      children: [
                        SvgPicture.asset(
                          'assets/calai/icon-clock.svg',
                          width: 16,
                        ),
                        Text(
                          '+200',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      spacing: 4,
                      children: [
                        SvgPicture.asset(
                          'assets/calai/icon-thunder.svg',
                          width: 16,
                        ),
                        Text(
                          '+1,118',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 120,
            child: Container(
              width: 120,
              height: 120,
              child: Stack(
                children: [
                  PieChart(
                    PieChartData(
                      startDegreeOffset: -90,
                      sectionsSpace: 0,
                      centerSpaceRadius: 48,
                      sections: [
                        PieChartSectionData(
                          value: 28,
                          color: Color(0xFF000000),
                          radius: 10,
                          showTitle: false,
                        ),
                        PieChartSectionData(
                          value: 72,
                          color: Color(0xFFEFF1F6),
                          radius: 10,
                          showTitle: false,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 42,
                    left: 42,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF8F9FD),
                      ),
                      padding: EdgeInsets.all(6),
                      child: SvgPicture.asset('assets/calai/icon-fire.svg'),
                    ),
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
