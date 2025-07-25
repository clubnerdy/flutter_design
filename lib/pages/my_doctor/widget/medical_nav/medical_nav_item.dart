import 'package:flutter/material.dart';

class MedicalNavItem extends StatelessWidget {
  final String label;
  final String img;

  const MedicalNavItem({
    super.key,
    required this.label,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          child: Image.asset(
            'assets/$img',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "$label",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF888888),
          ),
        ),
      ],
    );
  }
}
