import 'package:flutter/material.dart';

class KkaebizSlider extends StatefulWidget {
  const KkaebizSlider({super.key});

  @override
  State<KkaebizSlider> createState() => _KkaebizSliderState();
}

class _KkaebizSliderState extends State<KkaebizSlider> {
  double _currentValue = 0.0;
  final List<String> levels = ['LV.1', 'LV.2', 'LV.3'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4,
            activeTrackColor: Colors.black,
            inactiveTrackColor: Colors.grey[300],
            thumbColor: Colors.black,
            tickMarkShape: SliderTickMarkShape.noTickMark,
            overlayShape: SliderComponentShape.noOverlay,
          ),
          child: Slider(
            value: _currentValue,
            min: 0,
            max: 2,
            divisions: 2,
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          ),
        ),

        SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(levels.length, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                levels[index],
                style: TextStyle(
                  color: _currentValue.round() == index ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
