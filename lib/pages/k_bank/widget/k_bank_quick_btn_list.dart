import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/k_bank_vm.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_quick_btn.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KBankQuickBtnList extends ConsumerWidget {
  const KBankQuickBtnList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(amouuntProvider.notifier);
    return Row(
      spacing: 8,
      children: [
        KBankQuickBtn(
          num: 1,
          onTap: () => vm.addQuick(10000),
        ),
        KBankQuickBtn(
          num: 5,
          onTap: () => vm.addQuick(50000),
        ),
        KBankQuickBtn(
          num: 10,
          onTap: () => vm.addQuick(100000),
        ),
        KBankQuickBtn(
          num: 100,
          onTap: () => vm.addQuick(1000000),
        ),
      ],
    );
  }
}
