import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class DummyPage extends StatefulWidget {
  const DummyPage({super.key});

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  int hour = 0;
  int minute = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('테스트'),
      ),
      backgroundColor: Color(0xFFEAEBEF),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                NumberPicker(
                  value: hour,
                  minValue: 0,
                  maxValue: 12,
                  zeroPad: true,
                  infiniteLoop: true,
                  itemWidth: 80,
                  itemHeight: 60,
                  onChanged: (value) {
                    setState(() {
                      hour = value;
                    });
                  },
                  textStyle: TextStyle(
                    color: Color(0xffb6b6b6),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  selectedTextStyle: TextStyle(
                    color: Color(0xff606060),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                NumberPicker(
                  value: minute,
                  minValue: 0,
                  maxValue: 59,
                  zeroPad: true,
                  infiniteLoop: true,
                  itemWidth: 80,
                  itemHeight: 60,
                  onChanged: (value) {
                    setState(() {
                      minute = value;
                    });
                  },
                  textStyle: TextStyle(
                    color: Color(0xffb6b6b6),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  selectedTextStyle: TextStyle(
                    color: Color(0xff606060),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
