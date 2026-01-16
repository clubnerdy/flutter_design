import 'package:flutter/material.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_check_area.dart';

class OlyoungPersistentHeader extends StatefulWidget {
  const OlyoungPersistentHeader({
    super.key,
  });

  @override
  State<OlyoungPersistentHeader> createState() => _OlyoungPersistentHeaderState();
}

class _OlyoungPersistentHeaderState extends State<OlyoungPersistentHeader>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _CustomDelegate(
        maxHeight: 90,
        minHeight: 90,
        child: Container(
          width: double.infinity,
          height: 90,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            border: Border.all(color: Color(0xFF000000), width: 1),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '전체상품',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF131518),
                    ),
                  ),
                  OlyoungCheckArea(),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              ),
            ],
          ),
          // Container(
          //   padding: EdgeInsets.all(6),
          //   decoration: BoxDecoration(
          //     color: Color(0xFF000004),
          //     borderRadius: BorderRadiusGeometry.circular(32),
          //   ),
          //   child: TabBar(
          //     controller: _tabController,
          //     indicator: BoxDecoration(
          //       color: Color(0xFF242830),
          //       borderRadius: BorderRadius.circular(32),
          //     ),
          //     labelColor: Colors.white,
          //     unselectedLabelColor: Color(0xFF98989D),
          //     indicatorSize: TabBarIndicatorSize.tab,
          //     dividerColor: Colors.transparent,
          //     tabs: [
          //       Tab(text: '멤버십'),
          //       Tab(text: '현장결제'),
          //       Tab(text: '쿠폰'),
          //     ],
          //     labelStyle: TextStyle(
          //       fontSize: 14,
          //       fontWeight: FontWeight.w600,
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}

// 고정헤더 델리게이트값
class _CustomDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final Widget child;

  _CustomDelegate({
    required this.maxHeight,
    required this.minHeight,
    required this.child,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant _CustomDelegate oldDelegate) {
    return false;
  }
}
