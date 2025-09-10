import 'package:flutter/material.dart';
import 'package:flutter_design/pages/kkaebiz/widget/pickers.dart';

class KkaebizPicker extends StatefulWidget {
  const KkaebizPicker({super.key});

  @override
  State<KkaebizPicker> createState() => _KkaebizPickerState();
}

class _KkaebizPickerState extends State<KkaebizPicker> {
  int hour = 0;
  int minute = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Pickers(
          time: hour,
          onChanged: (value) {
            setState(() {
              hour = value;
            });
          },
          timeType: '시간',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                width: 10,
                height: 10,
                color: Colors.black,
              ),
              SizedBox(height: 10),
              Container(
                width: 10,
                height: 10,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Pickers(
          time: minute,
          onChanged: (value) {
            setState(() {
              minute = value;
            });
          },
          timeType: '분',
        ),
      ],
    );
  }
}
