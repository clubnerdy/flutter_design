import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BungeoppangSalt extends StatelessWidget {
  const BungeoppangSalt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFCFCFCF),
                ),
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3D000000),
                    offset: Offset(0, 0),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Align(
                alignment: AlignmentGeometry.center,
                child: FaIcon(
                  FontAwesomeIcons.locationCrosshairs,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 120,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFF333333),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 6,
                children: [
                  FaIcon(
                    FontAwesomeIcons.square,
                    color: Color(0xFFFFFFFF),
                    size: 18,
                  ),
                  Text(
                    '리스트뷰',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
