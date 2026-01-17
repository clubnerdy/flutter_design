import 'package:flutter/material.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_checkbox.dart';

class DummyPage extends StatefulWidget {
  const DummyPage({super.key});

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  bool saleChecked = false;
  bool giveChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('토글 체크박스 테스트'),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Row(
            children: [
              OlyoungCheckbox(
                label: '세일',
                value: saleChecked,
                onChanged: (value) {
                  setState(() {
                    saleChecked = value;
                  });
                },
              ),
              OlyoungCheckbox(
                label: '증정',
                value: giveChecked,
                onChanged: (value) {
                  setState(() {
                    giveChecked = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
