import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_recipient.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_sender.dart';

class KBankAccountList extends StatelessWidget {
  const KBankAccountList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        KBankSender(
          userName: '케이뱅크(7349)',
          imgUrl: 'assets/kbank/app-icon.png',
        ),
        KBankRecipient(
          userName: '우리 서회정',
          imgUrl: 'assets/kbank/app-icon.png',
        ),
      ],
    );
  }
}
