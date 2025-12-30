import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/k_bank_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KBankNextBtn extends ConsumerWidget {
  const KBankNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amount = ref.watch(amouuntProvider);

    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
            child: TextButton(
              onPressed: () {},
              child: Text(
                '다음',
                style: TextStyle(color: amount.isEmpty ? Color(0xFFC6CDDC) : Color(0xFFFFFFFF)),
              ),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: amount.isEmpty ? Color(0xFFEDF1F7) : Color(0xFF0114A7),
                padding: EdgeInsets.zero,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
