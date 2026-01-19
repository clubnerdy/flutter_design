import 'package:dotted_border/dotted_border.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CalAiChartModel extends StatelessWidget {
  final double? value;
  final Color activeColor;
  final Color inActiveColor;
  final int date;

  const CalAiChartModel({
    super.key,
    this.value,
    this.activeColor = const Color(0xFF222222),
    this.inActiveColor = const Color(0xFFCACACA),
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final displyColor = (value != null && value! >= 100) ? Color(0xFF8AE084) : activeColor;

    return SizedBox(
      height: 52,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: value == null
                // value 값이 null일때
                ? SizedBox(
                    width: 34,
                    height: 34,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFD4D4D9),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  )
                : value == 0
                // value 값이 0일때
                ? SizedBox(
                    width: 32,
                    height: 32,
                    child: DottedBorder(
                      child: Container(),
                      options: CircularDottedBorderOptions(
                        color: Color(0xFFD4D4D9),
                        strokeWidth: 2,
                        dashPattern: [5, 5],
                      ),
                    ),
                  )
                // value 값이 1~100일때
                : SizedBox(
                    width: 20,
                    height: 20,
                    child: PieChart(
                      PieChartData(
                        startDegreeOffset: -90, // 12시 시작
                        sectionsSpace: 0, // 섹션 간격 없음
                        centerSpaceRadius: 14, // 가운데 뚫어서 링 만들기
                        sections: [
                          PieChartSectionData(
                            value: value, // 진행 값
                            color: displyColor,
                            radius: 2, // 링 두께
                            showTitle: false,
                          ),
                          PieChartSectionData(
                            value: 100 - value!, // 남은 값
                            color: inActiveColor,
                            radius: 2,
                            showTitle: false,
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
          Positioned(
            child: Text(
              '${date}',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
