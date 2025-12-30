import 'package:flutter/material.dart';

class DummyPage extends StatefulWidget {
  const DummyPage({super.key});

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    final List<String> items = ['일주일', '1개월', '3개월', '6개월', '1년'];

    return Scaffold(
      appBar: AppBar(
        title: Text('커스텀 드롭다운 메뉴 테스트'),
      ),
      body: Center(
        child: PopupMenuButton<String>(
          offset: Offset(0, 40),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Text(selectedValue ?? '기간선택'),
                Icon(Icons.keyboard_arrow_down, size: 20),
              ],
            ),
          ),
          itemBuilder: (context) => items.map((item) {
            return PopupMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onSelected: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
