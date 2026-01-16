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
  int selectedIndex = 0;
  final List<String> tabs = ['멤버십', '청첩결제', '쿠폰', '적립금', '포인트', '이벤트'];

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
        maxHeight: 80,
        minHeight: 80,
        topPadding: MediaQuery.of(context).padding.top,
        child: Container(
          width: double.infinity,
          height: 80,
          padding: EdgeInsets.fromLTRB(16, MediaQuery.of(context).padding.top + 8, 16, 0),
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
                child: Row(
                  children: List.generate(tabs.length, (index) {
                    final isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          color: isSelected ? Color(0xFF242830) : Colors.transparent,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Text(
                          tabs[index],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: isSelected ? Colors.white : Color(0xFF98989D),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      floating: true,
      pinned: true,
    );
  }
}

// 고정헤더 델리게이트값
class _CustomDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final Widget child;
  final double topPadding;

  _CustomDelegate({
    required this.maxHeight,
    required this.minHeight,
    required this.child,
    required this.topPadding,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => maxHeight + topPadding;

  @override
  double get minExtent => minHeight + topPadding;

  @override
  bool shouldRebuild(covariant _CustomDelegate oldDelegate) {
    return false;
  }
}
