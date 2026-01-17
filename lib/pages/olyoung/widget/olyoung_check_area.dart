import 'package:flutter/material.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_checkbox.dart';

class OlyoungCheckArea extends StatefulWidget {
  const OlyoungCheckArea({
    super.key,
  });

  @override
  State<OlyoungCheckArea> createState() => _OlyoungCheckAreaState();
}

class _OlyoungCheckAreaState extends State<OlyoungCheckArea> {
  bool saleChecked = false;
  bool giveChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
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
    );
  }
}
