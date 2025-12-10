import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/k_bank_vm.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class KBankForm extends ConsumerWidget {
  const KBankForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amount = ref.watch(amouuntProvider);

    final fotmattedAmount = amount.isEmpty ? '' : NumberFormat('#,###').format(int.parse(amount));

    return Column(
      children: [
        Row(
          children: [
            if (amount.isEmpty)
              Text(
                '얼마를 보내시겠어요?',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8795B0),
                ),
              ),
            if (!amount.isEmpty)
              Text(
                '${fotmattedAmount}원',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
          ],
        ),
        KBankFormState(
          checkText: fotmattedAmount,
          amount: '276,849',
          isInput: amount.isEmpty,
        ),
      ],
    );
  }
}
