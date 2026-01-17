import 'package:flutter/material.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_item.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OlyoungContainer extends StatefulWidget {
  const OlyoungContainer({
    super.key,
  });

  @override
  State<OlyoungContainer> createState() => _OlyoungContainerState();
}

class _OlyoungContainerState extends State<OlyoungContainer> {
  String selectedSort = '인기순';

  final List<String> sortOptions = [
    '인기순',
    '낮은 가격 순',
    '높은 가격 순',
    '신상품순',
    '판매순',
    '리뷰 많은 순',
    '할인율 순',
  ];

  // 모달 바텀 시트 호출 함수
  void _showSortBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xFFFFFFFF),
      barrierColor: Color(0x80000000),
      isDismissible: true,
      enableDrag: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '정렬',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF010101),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/olyoung/icon-close.svg'),
                  ),
                ],
              ),
              SizedBox(height: 22),
              Column(
                children: [
                  ...sortOptions.map((sort) => _buildSortOption(sort)).toList(),
                ],
              ),
            ],
          ),
          // color: Color(0xFF000000),
        );
      },
    );
  }

  // 정렬 옵션 위젯
  Widget _buildSortOption(String sortType) {
    bool isSelected = selectedSort == sortType;

    return InkWell(
      onTap: () {
        setState(() {
          selectedSort = sortType;
        });
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sortType,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected ? Color(0xFF010101) : Color(0xFF888888),
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check,
                color: Color(0xFF010101),
                size: 20,
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '총 65개',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF131518),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _showSortBottomSheet();
                  },
                  child: Row(
                    children: [
                      Text(
                        selectedSort,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9BA3AA),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/olyoung/icon-arrow-down.svg',
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 20,
                mainAxisExtent: 380,
              ),
              itemCount: 65,
              itemBuilder: (context, index) {
                return OlyoungItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
