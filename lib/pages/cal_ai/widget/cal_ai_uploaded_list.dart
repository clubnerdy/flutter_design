import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_activity.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_ad.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_uploaded_item.dart';

class CalAiUploadedList extends StatelessWidget {
  const CalAiUploadedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text(
          'Recently uploaded',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Column(
          spacing: 20,
          children: [
            CalAiAd(),
            CalAiUploadedItem(
              imageName: 'gray-box',
              title: 'Peach',
              time: '오전 10:59',
              caloriesValue: 38,
              proteinValue: 0,
              carbsCValue: 9,
              fatValue: 0,
            ),
            CalAiUploadedItem(
              imageName: 'gray-box',
              title: 'Sweet Potato Chips',
              time: '오전 10:56',
              caloriesValue: 500,
              proteinValue: 3,
              carbsCValue: 53,
              fatValue: 30,
            ),
            CalAiUploadedItem(
              imageName: 'gray-box',
              title: 'Korean BBQ',
              time: '오전 10:53',
              caloriesValue: 782,
              proteinValue: 43,
              carbsCValue: 54,
              fatValue: 43,
            ),
            CalAiUploadedItem(
              title: 'Peanut Butter',
              time: '오전 10:52',
              caloriesValue: 94,
              proteinValue: 4,
              carbsCValue: 3,
              fatValue: 8,
            ),
            CalAiActivity(),
          ],
        ),
      ],
    );
  }
}
