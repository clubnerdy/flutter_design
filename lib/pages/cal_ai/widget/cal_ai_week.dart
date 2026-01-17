import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_chart_model.dart';

class CalAiWeek extends StatelessWidget {
  const CalAiWeek({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        spacing: 2,
        children: [
          Expanded(
            child: Container(
              height: 84,
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Sun'),
                  // CalAiChartModel(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 84,
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
            ),
          ),
          Expanded(
            child: Container(
              height: 84,
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
            ),
          ),
          Expanded(
            child: Container(
              height: 84,
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
            ),
          ),
          Expanded(
            child: Container(
              height: 84,
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
            ),
          ),
          Expanded(
            child: Container(
              height: 84,
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
            ),
          ),
          Expanded(
            child: Container(
              height: 84,
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
            ),
          ),
        ],
      ),
    );
  }
}
