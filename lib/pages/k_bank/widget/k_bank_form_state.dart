import 'package:flutter/material.dart';

class KBankFormState extends StatelessWidget {
  final int checkText;
  final int amount;
  final bool isInput;

  const KBankFormState({
    super.key,
    required this.checkText,
    required this.amount,
    required this.isInput,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${checkText}원',
          style: TextStyle(
            color: Color(0xFF222222),
            fontWeight: FontWeight.w600,
          ),
        ),
        VerticalDivider(
          width: 10,
          thickness: 2,
          color: Color(0xFF8795B0),
        ),
        Row(
          spacing: 4,
          children: [
            Text(
              '출금가능금액',
              style: TextStyle(
                color: Color(0xFF8795B0),
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: BoxBorder.fromLTRB(
                  bottom: BorderSide(
                    width: 1,
                    color: Color(0xFF8795B0),
                  ),
                ),
              ),
              child: Text(
                '${amount}원',
                style: TextStyle(
                  color: Color(0xFF8795B0),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
