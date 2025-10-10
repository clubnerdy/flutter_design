import 'package:flutter/material.dart';
import 'package:flutter_design/pages/nhr_talk/widget/nhr_carousel.dart';
import 'package:flutter_design/pages/nhr_talk/widget/nhr_contents.dart';
import 'package:flutter_design/pages/nhr_talk/widget/nhr_sliver_header.dart';

class NhrBody extends StatefulWidget {
  const NhrBody({
    super.key,
  });

  @override
  State<NhrBody> createState() => _NhrBodyState();
}

class _NhrBodyState extends State<NhrBody> with TickerProviderStateMixin {
  late final TabController _tabController;

  final tabs = const [
    Tab(text: '🔥 인기급상승'),
    Tab(text: '채용소식'),
    Tab(text: '기업정보'),
    Tab(text: '직무정보'),
    Tab(text: '취준후기'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const activeColor = Colors.black;
    final inactiveColor = Colors.grey.shade500;

    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          NhrCarousel(),
          NhrSliverHeader(
            tabController: _tabController,
            tabs: tabs,
            activeColor: activeColor,
            inactiveColor: inactiveColor,
          ),
        ],
        body: NhrContent(tabController: _tabController),
      ),
    );
  }
}
