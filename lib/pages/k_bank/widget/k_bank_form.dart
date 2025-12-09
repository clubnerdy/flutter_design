import 'package:flutter/material.dart';
import 'package:flutter_design/pages/k_bank/widget/k_bank_form_state.dart';

class KBankForm extends StatelessWidget {
  const KBankForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: '얼마를 보내시겠어요?',
              hintStyle: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color(0xFF8795B0),
              ),
              border: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
            readOnly: true,
          ),
        ),
        KBankFormState(
          checkText: 100,
          amount: 276849,
          isInput: true,
        ),
      ],
    );
  }
}
