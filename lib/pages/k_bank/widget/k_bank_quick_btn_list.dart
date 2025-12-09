import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_quick_btn.dart';

class KBankQuickBtnList extends StatelessWidget {
  const KBankQuickBtnList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        KBankQuickBtn(
          num: 1,
        ),
        KBankQuickBtn(
          num: 5,
        ),
        KBankQuickBtn(
          num: 10,
        ),
        KBankQuickBtn(
          num: 100,
        ),
      ],
    );
  }
}
