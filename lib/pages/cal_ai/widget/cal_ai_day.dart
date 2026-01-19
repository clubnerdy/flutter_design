import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_chart_model.dart';

class CalAiDay extends StatelessWidget {
  final String weekDay;
  final int date;
  final double? value;
  final bool? isToday;

  const CalAiDay({
    super.key,
    required this.weekDay,
    required this.date,
    this.value,
    this.isToday = false,
  });

  @override
  Widget build(BuildContext context) {
    final activeFill = isToday == true ? Color(0xFFFFFFFF) : Colors.transparent;

    return Expanded(
      child: Container(
        height: 84,
        padding: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
          color: activeFill,
          borderRadius: BorderRadius.circular(16),
          boxShadow: isToday == true
              ? [
                  BoxShadow(
                    color: Color(0x1A818181),
                    blurRadius: 10.0,
                    spreadRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              weekDay,
              style: TextStyle(
                color: Color(0xFF8B8B8E),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            CalAiChartModel(
              value: value,
              date: date,
            ),
          ],
        ),
      ),
    );
  }
}
