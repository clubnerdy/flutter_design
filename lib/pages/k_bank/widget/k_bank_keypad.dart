import 'package:flutter/material.dart';

class KBankKeypad extends StatelessWidget {
  final int num;

  const KBankKeypad({
    super.key,
    required this.num,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: TextButton(
          onPressed: () {},
          child: Text(
            '${num}',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: const Color(0xFFFFFFFF),
            foregroundColor: const Color(0xFF333333),
            padding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
