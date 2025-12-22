import 'package:flutter/material.dart';

class KurlySelectBox extends StatefulWidget {
  const KurlySelectBox({
    super.key,
  });

  @override
  State<KurlySelectBox> createState() => _KurlySelectBoxState();
}

class _KurlySelectBoxState extends State<KurlySelectBox> {
  String? selectedValue;
  final List<String> items = ['일주일', '1개월', '3개월', '6개월', '1년'];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      offset: Offset(0, 44),
      color: Color(0xFFFFFFFF),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              child: Text(selectedValue ?? '선택'),
            ),
            Icon(Icons.keyboard_arrow_down, size: 18),
          ],
        ),
      ),
      itemBuilder: (context) => items.map((item) {
        return PopupMenuItem(
          height: 44,

          value: item,
          child: Text(item),
        );
      }).toList(),
      onSelected: (value) {
        setState(() {
          selectedValue = value;
        });
      },
    );
  }
}
