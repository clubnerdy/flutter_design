import 'package:flutter/material.dart';
import 'package:flutter_design/pages/nhr_talk/widget/nhr_tabs_header_delegate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NhrSliverHeader extends StatelessWidget {
  const NhrSliverHeader({
    super.key,
    required TabController tabController,
    required this.tabs,
    required this.activeColor,
    required this.inactiveColor,
  }) : _tabController = tabController;

  final TabController _tabController;
  final List<Tab> tabs;
  final Color activeColor;
  final Color inactiveColor;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: NhrTabsHeaderDelegate(
        height: 120,
        child: Container(
          decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 8,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 10,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xFFCFCFCF),
                            width: 1,
                          ),
                        ),
                        alignment: Alignment(0, 0),
                        child: FaIcon(
                          FontAwesomeIcons.sliders,
                          size: 16,
                          color: Color(0xFF444444),
                        ),
                      ),
                    ),
                    Row(
                      spacing: 6,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 98,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFF444444),
                                width: 1,
                              ),
                            ),
                            alignment: Alignment(0, 0),
                            child: Row(
                              spacing: 5,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '취준단계',
                                  style: TextStyle(
                                    color: Color(0xFF444444),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.angleDown,
                                  size: 16,
                                  color: Color(0xFF444444),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 98,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFF444444),
                                width: 1,
                              ),
                            ),
                            alignment: Alignment(0, 0),
                            child: Row(
                              spacing: 5,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '관심직무',
                                  style: TextStyle(
                                    color: Color(0xFF444444),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.angleDown,
                                  size: 16,
                                  color: Color(0xFF444444),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 98,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFF444444),
                                width: 1,
                              ),
                            ),
                            alignment: Alignment(0, 0),
                            child: Row(
                              spacing: 5,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '관심기업',
                                  style: TextStyle(
                                    color: Color(0xFF444444),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.angleDown,
                                  size: 16,
                                  color: Color(0xFF444444),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Material(
                color: Color(0xFFFFFFFF),
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabs: tabs,
                  labelColor: activeColor,
                  unselectedLabelColor: inactiveColor,
                  labelStyle: TextStyle(fontWeight: FontWeight.w600),
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.symmetric(horizontal: 12),
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  tabAlignment: TabAlignment.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
