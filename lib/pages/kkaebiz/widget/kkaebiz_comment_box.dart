import 'package:flutter/material.dart';

class KkabizCommentBox extends StatelessWidget {
  const KkabizCommentBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Text(
        '착한맛으로 알려줄게 😇',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF3E3F44),
          height: 2.8,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
