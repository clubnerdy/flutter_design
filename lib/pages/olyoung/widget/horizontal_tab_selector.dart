import 'package:flutter/material.dart';

class HorizontalTabSelector extends StatefulWidget {
  const HorizontalTabSelector({super.key});

  @override
  State<HorizontalTabSelector> createState() => _HorizontalTabSelectorState();
}

class _HorizontalTabSelectorState extends State<HorizontalTabSelector> {
  int selectedIndex = 0;
  final List<String> tabs = ['멤버십', '청첩결제', '쿠폰', '적립금', '포인트', '이벤트'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16),
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
    );
  }
}
