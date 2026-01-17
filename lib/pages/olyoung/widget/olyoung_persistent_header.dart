import 'package:flutter/material.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_check_area.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_tab_list.dart';

class OlyoungPersistentHeader extends StatefulWidget {
  const OlyoungPersistentHeader({
    super.key,
  });

  @override
  State<OlyoungPersistentHeader> createState() => _OlyoungPersistentHeaderState();
}

class _OlyoungPersistentHeaderState extends State<OlyoungPersistentHeader> {
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _CustomDelegate(
        maxHeight: 96,
        minHeight: 96,
        topPadding: MediaQuery.of(context).padding.top,
        child: Container(
          width: double.infinity,
          height: 96,
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
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
              ),
              OlyoungTabList(),
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
