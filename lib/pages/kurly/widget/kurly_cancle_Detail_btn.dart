import 'package:flutter/material.dart';

class KurlyCancleDetailBtn extends StatelessWidget {
  const KurlyCancleDetailBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Color(0xFFECEFF3),
        foregroundColor: Color(0xFF333333),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        padding: EdgeInsetsGeometry.symmetric(vertical: 14),
      ),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          '취소내역보기',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
