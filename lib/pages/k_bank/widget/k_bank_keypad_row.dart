import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_keypad.dart';

class KBankKeypadRow extends StatelessWidget {
  const KBankKeypadRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KBankKeypad(num: 1),
        KBankKeypad(num: 2),
        KBankKeypad(num: 3),
      ],
    );
  }
}
