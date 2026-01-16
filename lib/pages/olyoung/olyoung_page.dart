import 'package:flutter/material.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_persistent_header.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_sliver_app_bar.dart';

class OlyoungPage extends StatelessWidget {
  const OlyoungPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: CustomScrollView(
        slivers: [
          OlyoungSliverAppBar(),
          OlyoungPersistentHeader(),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 1200,
              color: Color(0xFF000000),
            ),
          ),
        ],
      ),
    );
  }
}
