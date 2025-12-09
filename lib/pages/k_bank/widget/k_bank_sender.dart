import 'package:flutter/material.dart';

class KBankSender extends StatelessWidget {
  final String userName;
  final String imgUrl;

  const KBankSender({
    super.key,
    required this.userName,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24,
          height: 24,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset(imgUrl),
          ),
        ),
        Text(
          userName,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '에서',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xFF888888),
          ),
        ),
      ],
    );
  }
}
