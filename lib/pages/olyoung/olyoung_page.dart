import 'package:flutter/material.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_persistent_header.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OlyoungPage extends StatelessWidget {
  const OlyoungPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFFFFFFFF),
            toolbarHeight: 50,
            title: Text(
              '토리든',
              style: TextStyle(
                color: Color(0xFF131518),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            actionsPadding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            actions: [
              InkWell(
                onTap: () {},
                child: SizedBox(
                  child: SvgPicture.asset(
                    'assets/olyoung/icon-search.svg',
                    height: 22,
                  ),
                ),
              ),
              SizedBox(width: 18),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  child: SvgPicture.asset(
                    'assets/olyoung/icon-bag-strong.svg',
                    height: 22,
                  ),
                ),
              ),
            ],
          ),
          OlyoungPersistentHeader(),
        ],
      ),
    );
  }
}
