import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_day.dart';

class CalAiWeek extends StatelessWidget {
  const CalAiWeek({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          CalAiDay(
            weekDay: 'Sun',
            date: 7,
            value: 0,
          ),
          CalAiDay(
            weekDay: 'Mon',
            date: 8,
            value: 0,
          ),
          CalAiDay(
            weekDay: 'Tue',
            date: 9,
            value: 0,
          ),
          CalAiDay(
            weekDay: 'Wed',
            date: 10,
            value: 0,
          ),
          CalAiDay(
            weekDay: 'Thu',
            date: 11,
            value: 100,
          ),
          CalAiDay(
            weekDay: 'Fri',
            date: 12,
            value: 70,
            isToday: true,
          ),
          CalAiDay(
            weekDay: 'Sat',
            date: 13,
          ),
        ],
      ),
    );
  }
}
