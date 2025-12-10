import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/k_bank_vm.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_keypad_row.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KBankKeyPadCol extends ConsumerWidget {
  const KBankKeyPadCol({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(amouuntProvider.notifier);

    void handleTap(String key) {
      vm.inputKey(key);
    }

    return Column(
      children: [
        KBankKeypadRow(
          labels: ['1', '2', '3'],
          onTap: handleTap,
        ),
        KBankKeypadRow(
          labels: ['4', '5', '6'],
          onTap: handleTap,
        ),
        KBankKeypadRow(
          labels: ['7', '8', '9'],
          onTap: handleTap,
        ),
        KBankKeypadRow(
          labels: ['00', '0', 'back'],
          isShowBackspaceIcon: true,
          onTap: handleTap,
        ),
      ],
    );
  }
}
