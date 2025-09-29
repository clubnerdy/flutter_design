import 'package:flutter/material.dart';

class BungeoppangSearchBox extends StatelessWidget {
  const BungeoppangSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      left: 16,
      right: 16,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '강남역 2호선',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFF0F0F0F),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color(0xFFCFCFCF),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
