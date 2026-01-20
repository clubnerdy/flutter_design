import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_slider.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_uploaded_list.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_week.dart';

class CalAiBody extends StatelessWidget {
  const CalAiBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [
          CalAiWeek(),
          Column(
            spacing: 20,
            children: [
              CalAiSlider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    CalAiUploadedList(),
                    SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
