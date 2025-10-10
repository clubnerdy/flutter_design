import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NhrSliverHeader extends StatelessWidget {
  const NhrSliverHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: MyHeaderDelegate(),
    );
  }
}

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      color: Colors.grey,
      height: 200,
      child: Column(
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
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('메뉴1'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('메뉴1'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('메뉴1'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('메뉴1'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('메뉴1'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('메뉴1'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 160;
  @override
  bool shouldRebuild(covariant MyHeaderDelegate oldDelegate) {
    return false;
  }
}
