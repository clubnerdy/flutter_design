import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CalAiAd extends StatelessWidget {
  const CalAiAd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF8F8FC),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A818181),
            blurRadius: 10.0,
            spreadRadius: 1,
            offset: Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Image.asset(
            'assets/gray-box.png',
            width: 128,
            height: 150,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'No label detected',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFE24747),
                        ),
                      ),
                      InkWell(
                        onTap: () => print('close 버튼 눌러짐'),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.xmark,
                            size: 16,
                            color: Color(0xFF908C8C),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Please retake the picture with the label clearly visible',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1,
                      color: Color(0xFF908C8C),
                    ),
                  ),
                  InkWell(
                    onTap: () => print('retry 버튼 눌러짐'),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFFF4F4F8),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        'Retry',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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
