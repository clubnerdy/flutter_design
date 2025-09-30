import 'package:flutter/material.dart';

class BungeoppangSocial extends StatelessWidget {
  const BungeoppangSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          width: 168,
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF00A542),
            ),
            borderRadius: BorderRadius.circular(24),
            color: Color(0xFFFFFFFF),
          ),
          child: Text(
            '☘️ 이 동네 가게 소식',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFF00A542),
            ),
          ),
        ),
      ),
    );
  }
}
