import 'package:flutter/material.dart';
import 'package:flutter_design/pages/cal_ai/widget/cal_ai_body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalAiPage extends StatelessWidget {
  const CalAiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7F8),
      appBar: _appbar(),
      body: CalAiBody(),
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
