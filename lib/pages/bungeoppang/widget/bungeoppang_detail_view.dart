import 'package:flutter/material.dart';

class BungeoppangDetailView extends StatelessWidget {
  const BungeoppangDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: CarouselView(
        itemExtent: 320,
        shrinkExtent: 300,
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0xFF222222)),
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 2,
                        children: [
                          Text(
                            '#붕어빵',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'HODU BOOM (강남역 2호점)',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xFF555555),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                            child: Text(
                              '최근 방문 26명',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
