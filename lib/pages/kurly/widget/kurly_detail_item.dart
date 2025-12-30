import 'package:flutter/material.dart';

class KurlyDetailItem extends StatelessWidget {
  final String? label;
  final String itemName;
  final String? description;
  final String curruntPrice;
  final String? price;
  final int count;
  final String imageUrl;

  const KurlyDetailItem({
    super.key,
    this.label,
    required this.itemName,
    this.description,
    required this.curruntPrice,
    this.price,
    required this.count,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 14,
        children: [
          ClipRRect(
            // TODO: 이미지 위젯으로 변경
            child: Container(
              width: 64,
              height: 82,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset('${imageUrl}'),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  '${label}',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFAEAEAE),
                  ),
                ),
                Text(
                  '${itemName}',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF333333),
                  ),
                ),
                Text(
                  '${description}',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFAEAEAE),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  spacing: 6,
                  children: [
                    Text(
                      '${curruntPrice}원',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF222222),
                      ),
                    ),
                    Text(
                      '${price}원',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFC3C3C3),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0xFFC3C3C3),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                      child: VerticalDivider(
                        width: 2,
                        thickness: 1,
                        color: Color(0xFFEFEFEF),
                      ),
                    ),
                    Text(
                      '${count}개',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF222222),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 1, color: Color(0xFFCECECE)),
                ),
                child: Image.asset(
                  'assets/kurly/icon-cart-small.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
