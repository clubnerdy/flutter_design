import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class KkaebizPage extends StatefulWidget {
  const KkaebizPage({super.key});

  @override
  State<KkaebizPage> createState() => _KkaebizPageState();
}

class _KkaebizPageState extends State<KkaebizPage> {
  double _currentValue = 0.0;
  final List<String> levels = ['LV.1', 'LV.2', 'LV.3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      backgroundColor: Color(0xFFF7F7F7),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 44),
              child: Center(
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFFFC6F3D),
                  ),
                  child: Lottie.asset('assets/kkaebiz/kkaebiz.json'),
                ),
              ),
            ),
            SizedBox(height: 22),
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Text(
                '착한맛으로 알려줄게 😇',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF3E3F44),
                  height: 2.8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 24),

            Column(
              children: [
                // 슬라이더
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
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFFF2F1F2),
          ),
          child: Icon(Icons.arrow_back_ios_new_sharp),
        ), // 원하는 아이콘으로 바꿔도 됨
        onPressed: () {
          Navigator.pop(context); // 원하는 동작 넣기
        },
      ),
      title: Text(
        '타이머 설정',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
    );
  }
}
