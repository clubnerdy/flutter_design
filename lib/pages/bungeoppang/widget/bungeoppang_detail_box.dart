import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BungeoppangDetailBox extends StatelessWidget {
  const BungeoppangDetailBox({
    super.key,
    required this.tag,
    required this.name,
    required this.label,
    required this.comment,
    required this.location,
  });

  final String tag;
  final String name;
  final int label;
  final int comment;
  final int location;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFF0F0F0F)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/bungeoppang/bungeo-icon.png',
            width: 32,
            height: 32,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    Text(
                      '#${tag}',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF555555),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                      child: Text(
                        '최근 방문 ${label}명',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          spacing: 4,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.commentDots,
                              size: 16,
                              color: Color(0xFF888888),
                            ),
                            Text(
                              '${comment}개',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF888888),
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          width: 14,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                          color: Color(0xFFB3B3B3),
                        ),
                        Row(
                          spacing: 4,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.locationArrow,
                              size: 16,
                              color: Color(0xFF888888),
                            ),
                            Text(
                              '${location}Km +',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF888888),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFF7070),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.locationArrow,
                              color: Color(0xFFFFFFFF),
                              size: 20,
                            ),
                            SizedBox(width: 6),
                            Text(
                              '방문하기',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
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
