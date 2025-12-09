import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_account_list.dart';

class KBankBody extends StatelessWidget {
  const KBankBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          KBankAccountList(),
        ],
      ),
    );
  }
}
