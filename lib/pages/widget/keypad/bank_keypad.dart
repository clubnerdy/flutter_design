import 'package:flutter/material.dart';
import 'keypad_key.dart';

class BankKeypad extends StatelessWidget {
  final ValueChanged<String> onDigitTap;
  final VoidCallback onBackspace;

  const BankKeypad({
    super.key,
    required this.onDigitTap,
    required this.onBackspace,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.3,
          ),
          itemCount: bankKeypadKeys.length,
          itemBuilder: (context, index) {
            final key = bankKeypadKeys[index];

            return _BankKeyButton(
              keyData: key,
              onTap: () {
                switch (key.type) {
                  case KeypadKeyType.digit:
                  case KeypadKeyType.doubleZero:
                    onDigitTap(key.label!);
                    break;
                  case KeypadKeyType.backspace:
                    onBackspace();
                    break;
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class _BankKeyButton extends StatelessWidget {
  final KeypadKey keyData;
  final VoidCallback onTap;

  const _BankKeyButton({
    required this.keyData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget child;

    switch (keyData.type) {
      case KeypadKeyType.digit:
      case KeypadKeyType.doubleZero:
        child = Text(
          keyData.label ?? '',
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        );
        break;

      case KeypadKeyType.backspace:
        child = const Icon(Icons.backspace_outlined);
        break;
    }

    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: theme.colorScheme.surface,
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              offset: const Offset(0, 2),
              color: Colors.black.withOpacity(0.06),
            ),
          ],
        ),
        child: Center(child: child),
      ),
    );
  }
}
