import 'package:flutter/material.dart';

class MedicalNavBtn extends StatelessWidget {
  const MedicalNavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFEEEEEE),
            ),
          ),
        ),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "모든 증상 보기",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF9A9A9A),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Color(0xFF9A9A9A),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
