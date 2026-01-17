import 'package:flutter/material.dart';

class OlyoungTabList extends StatefulWidget {
  const OlyoungTabList({super.key});

  @override
  State<OlyoungTabList> createState() => _OlyoungTabListState();
}

class _OlyoungTabListState extends State<OlyoungTabList> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;
  final List<String> tabs = ['전체', '스킨케어', '마스크팩', '맨즈케어', '선케어', '클렌징', '메이크업'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          spacing: 8,
          children: List.generate(tabs.length, (index) {
            final isSelected = selectedIndex == index;
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  print('탭 눌러짐');
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: isSelected ? Color(0xFF242830) : Colors.transparent,
                  border: Border.all(
                    color: isSelected ? Colors.transparent : Color(0xFFB3B8BE),
                  ),
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
    );
  }
}
