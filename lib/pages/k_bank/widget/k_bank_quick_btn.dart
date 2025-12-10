import 'package:flutter/material.dart';

class KBankQuickBtn extends StatelessWidget {
  final int num;
  final VoidCallback onTap;

  const KBankQuickBtn({
    super.key,
    required this.num,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: TextButton(
          onPressed: onTap,
          child: Text(
            '+${num}만',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: const Color(0xFFF7F9FD),
            foregroundColor: const Color(0xFF0114A7),
            padding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
