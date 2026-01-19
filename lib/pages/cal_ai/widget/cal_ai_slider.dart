import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_calories.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_nutrient_list.dart';

class CalAiSlider extends StatefulWidget {
  const CalAiSlider({
    super.key,
  });

  @override
  State<CalAiSlider> createState() => _CalAiSliderState();
}

class _CalAiSliderState extends State<CalAiSlider> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 360,
            initialPage: 0,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                spacing: 10,
                children: [
                  CalAiCalories(),
                  CalAiNutrientList(),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                spacing: 10,
                children: [
                  CalAiCalories(),
                  CalAiNutrientList(),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                spacing: 10,
                children: [
                  CalAiCalories(),
                  CalAiNutrientList(),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(index),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color(0xFF222222) // 활성 색상
                      : Colors.transparent, // 비활성 색상
                  border: _current == index
                      ? Border.all(color: Colors.transparent)
                      : Border.all(color: Color(0xFFCACACA), width: 1),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
