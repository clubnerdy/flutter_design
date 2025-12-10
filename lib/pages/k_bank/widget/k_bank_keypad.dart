import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KBankKeypad extends StatelessWidget {
  final String label;
  final bool isBackspace;
  final void Function(String) onTap;

  const KBankKeypad({
    super.key,
    required this.label,
    this.isBackspace = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 56,
        child: TextButton(
          onPressed: () => onTap(label),
          child: isBackspace
              ? SvgPicture.asset(
                  'assets/kbank/arrow-left.svg',
                  width: 30,
                  height: 30,
                )
              : Text(
                  label,
                  style: const TextStyle(
                    fontSize: 24,
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
