import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_body.dart';

class KBankPage extends StatelessWidget {
  const KBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: _appbar(context),
      body: KBankBody(),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      leading: IconButton(
        icon: Container(
          width: 60,
          height: 60,
          child: Icon(Icons.arrow_back_ios_new_sharp),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            '취소',
            style: TextStyle(color: Color(0xFF000000)),
          ),
        ),
      ],
    );
  }
}
