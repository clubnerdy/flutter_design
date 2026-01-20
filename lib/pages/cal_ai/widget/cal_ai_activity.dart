import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalAiActivity extends StatelessWidget {
  const CalAiActivity({
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
      padding: EdgeInsets.all(16),
      child: Row(
        spacing: 8,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(32),
            ),
            padding: EdgeInsets.all(14),
            child: SvgPicture.asset(
              'assets/calai/icon-run.svg',
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 18,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Run',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '오전 10:52',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 4,
                  children: [
                    SvgPicture.asset('assets/calai/icon-fire.svg'),
                    Text(
                      '1,110 Calories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 16,
                  children: [
                    Row(
                      spacing: 4,
                      children: [
                        SvgPicture.asset(
                          'assets/calai/icon-activity.svg',
                          width: 18,
                        ),
                        Text(
                          'Intensity: High',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        SvgPicture.asset(
                          'assets/calai/icon-clock.svg',
                          width: 18,
                        ),
                        Text(
                          '60 Mins',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
