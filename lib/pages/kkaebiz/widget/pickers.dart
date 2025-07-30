import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Pickers extends StatelessWidget {
  final int time;
  final ValueChanged<int> onChanged;
  final String timeType;

  const Pickers({
    super.key,
    required this.time,
    required this.onChanged,
    required this.timeType,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          NumberPicker(
            value: time,
            minValue: 0,
            maxValue: 12,
            zeroPad: true,
            infiniteLoop: true,
            itemHeight: 80,
            onChanged: onChanged,
            textStyle: TextStyle(
              color: Color(0xffe3e3e3),
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
            selectedTextStyle: TextStyle(
              color: Color(0xff131315),
              fontSize: 60,
              fontWeight: FontWeight.w600,
            ),
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: Color(0xffeaeaea)),
              ),
            ),
          ),
          Text(
            timeType,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff686868),
            ),
          ),
        ],
      ),
    );
  }
}
