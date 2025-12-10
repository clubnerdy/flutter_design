import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_keypad.dart';

class KBankKeypadRow extends StatelessWidget {
  final List<String> labels;
  final bool isShowBackspaceIcon;
  final void Function(String) onTap;

  const KBankKeypadRow({
    super.key,
    required this.labels,
    this.isShowBackspaceIcon = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KBankKeypad(
          label: labels[0],
          onTap: onTap,
        ),
        KBankKeypad(
          label: labels[1],
          onTap: onTap,
        ),
        KBankKeypad(
          label: labels[2],
          onTap: onTap,
          isBackspace: isShowBackspaceIcon && labels[2] == 'back',
        ),
      ],
    );
  }
}
