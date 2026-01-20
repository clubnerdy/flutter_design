import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_body.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CalAiPage extends StatefulWidget {
  const CalAiPage({super.key});

  @override
  State<CalAiPage> createState() => _CalAiPageState();
}

class _CalAiPageState extends State<CalAiPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7F8),
      appBar: _appbar(),
      body: CalAiBody(),

      // 바텀네비게이션 만들기
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('플로팅액션버튼 눌러짐'),
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white),
        elevation: 2,
        shape: CircleBorder(),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFFFFFF),
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                FontAwesomeIcons.house,
                'Home',
                0,
              ),
              _buildNavItem(FontAwesomeIcons.chartSimple, 'Progress', 1),
              _buildNavItem(FontAwesomeIcons.gear, 'Settings', 2),
              SizedBox(width: 1),
            ],
          ),
        ),
      ),
    );
  }

  InkWell _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = currentIndex == index;
    return InkWell(
      onTap: () => setState(() => currentIndex = index),
      child: Column(
        spacing: 4,
        children: [
          FaIcon(
            icon,
            color: isSelected ? Colors.black : Color(0xFFD6D7D9),
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : Color(0xFF8D8C8D),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: SvgPicture.asset(
        'assets/calai/logo.svg',
        height: 32,
      ),
      backgroundColor: Color(0xFFF3F7F8),
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      actionsPadding: EdgeInsets.only(right: 16),
      actions: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Color(0x1A818181),
                  blurRadius: 10.0,
                  spreadRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Text(
                  '🔥 1',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
