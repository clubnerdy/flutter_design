import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CalAiChartModel extends StatelessWidget {
  final int value;
  final Color activeColor;
  final Color inActiveColor;

  const CalAiChartModel({
    super.key,
    required this.value,
    this.activeColor = const Color(0xFF222222),
    this.inActiveColor = const Color(0xFFCACACA),
  });

  @override
  Widget build(BuildContext context) {
    final v = value.clamp(1, 100);

    return SizedBox(
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: SizedBox(
              width: 20,
              height: 20,
              child: PieChart(
                PieChartData(
                  startDegreeOffset: -90, // 12시 시작
                  sectionsSpace: 0, // 섹션 간격 없음
                  centerSpaceRadius: 14, // 가운데 뚫어서 링 만들기
                  sections: [
                    PieChartSectionData(
                      value: 70, // 진행 값
                      color: activeColor,
                      radius: 3, // 링 두께
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 30, // 남은 값
                      color: inActiveColor,
                      radius: 3,
                      showTitle: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Text('${v}'),
          ),
        ],
      ),
    );
  }
}
