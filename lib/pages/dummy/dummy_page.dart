import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabBarExample(),
    );
  }
}

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});
  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> with TickerProviderStateMixin {
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

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: Container(
              height: 240,
              color: Color(0xFFCFCFCF),
              alignment: Alignment.center,
              child: const Text('여기 상단 헤더(배너/필터 등)'),
            ),
          ),

          SliverPersistentHeader(
            pinned: true,
            delegate: _TabsHeaderDelegate(
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
          ),
        ],

        // 탭별 콘텐츠
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildList('인기급상승'),
            _buildList('채용소식'),
            _buildList('기업정보'),
            _buildList('직무정보'),
            _buildList('취준후기'),
          ],
        ),
      ),
    );
  }

  Widget _buildList(String title) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 0),
      itemCount: 8,
      itemBuilder: (_, i) => ListTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 22,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '[사전공개] 10월 1주 채용행사 일정',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '🚀 AI요약 · 독점✨ 오직 커리어톡에서만! 채용공고/리크루팅 일정을 확인해보세요.',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '캠리 · 신입',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 46,
                children: [
                  Container(
                    width: 110,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset('assets/nhr/sample-image.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFFCACACA),
                          width: 1.5,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: FaIcon(
                        FontAwesomeIcons.bookmark,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      separatorBuilder: (_, __) => const Divider(height: 1),
    );
  }
}

class _TabsHeaderDelegate extends SliverPersistentHeaderDelegate {
  _TabsHeaderDelegate({required this.child, required this.height});

  final Widget child;
  final double height;

  @override
  double get minExtent => height;
  @override
  double get maxExtent => height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant _TabsHeaderDelegate old) {
    return old.child != child || old.height != height;
  }
}
