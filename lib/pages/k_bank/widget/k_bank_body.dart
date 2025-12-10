import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_account_list.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_amount_keys.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_form.dart';

class KBankBody extends StatelessWidget {
  const KBankBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            KBankAccountList(),
            KBankForm(),
            KBankAmountKeys(),
          ],
        ),
      ),
    );
  }
}
