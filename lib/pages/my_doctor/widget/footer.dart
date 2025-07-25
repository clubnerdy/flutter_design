import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            FooterInk(label: "이용약관", isFirst: true),
            Container(
              width: 1,
              height: 12,
              color: Color(0xFF333333),
            ),
            FooterInk(label: "개인정보처리방침"),
            Container(
              width: 1,
              height: 12,
              color: Color(0xFF333333),
            ),
            FooterInk(label: "위치기반서비스이용약관"),
          ],
        ),
        SizedBox(height: 6),
        Text(
          "광고문의 : sales@merakiplace.kr",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 30),
        InkWell(
          onTap: () {},
          child: Text(
            "(주) 메라키플레이스",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class FooterInk extends StatelessWidget {
  final String label;
  final bool isFirst;

  FooterInk({
    super.key,
    required this.label,
    this.isFirst = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(
          left: isFirst ? 0 : 8,
          right: 8,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
