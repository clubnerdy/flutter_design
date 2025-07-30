import 'package:flutter/material.dart';

class KkaebizBottomBtn extends StatelessWidget {
  const KkaebizBottomBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InkWell(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF3E3F44),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              '타이머 시작하기',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
