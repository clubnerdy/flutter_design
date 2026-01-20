import 'dart:ui';

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

  ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7F8),
      // appBar: _appBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              controller: _scrollController,
              padding: EdgeInsets.only(top: 80),
              children: [
                CalAiBody(),
              ],
            ),
          ),
          _buildBlurAppBar(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('플로팅액션버튼 눌러짐'),
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white),
        elevation: 2,
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  Widget _buildBlurAppBar() {
    double blurAmount = (_scrollOffset / 100).clamp(0.0, 10.0);
    double opacity = (_scrollOffset / 100).clamp(0.0, 0.8);

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRect(
        child: Container(
          height: 80 + MediaQuery.of(context).padding.top,
          child: Stack(
            children: [
              if (_scrollOffset > 0)
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: blurAmount,
                    sigmaY: blurAmount,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(opacity * 0.7),
                          Colors.white.withOpacity(opacity * 0.3),
                          Colors.white.withOpacity(0),
                        ],
                        stops: [0.0, 0.7, 1.0],
                      ),
                    ),
                  ),
                ),
              SafeArea(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/calai/logo.svg',
                        height: 32,
                      ),
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
                          child: Text(
                            '🔥 1',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomAppBar _bottomAppBar() {
    return BottomAppBar(
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
}
