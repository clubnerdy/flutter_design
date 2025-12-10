import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_keypad_col.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_next_btn.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_quick_btn_list.dart';

class KBankAmountKeys extends StatelessWidget {
  const KBankAmountKeys({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KBankQuickBtnList(),
        SizedBox(
          height: 12,
        ),
        KBankKeyPadCol(),
        SizedBox(
          height: 12,
        ),
        KBankNextBtn(),
      ],
    );
  }
}
