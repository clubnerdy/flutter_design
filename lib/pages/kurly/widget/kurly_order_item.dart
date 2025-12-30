import 'package:flutter/material.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_cancle_Detail_btn.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_detail_top.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_item_list.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_more_btn.dart';

class KurlyOrderItem extends StatelessWidget {
  const KurlyOrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        spacing: 12,
        children: [
          kurlyDetailTop(),
          Divider(
            thickness: 1,
            color: Color(0xFFEEEEEE),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              Text(
                '취소완료',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF666666),
                ),
              ),
              KurlyItemList(),
              KurlyMoreBtn(),
              KurlyCancleDetailBtn(),
            ],
          ),
        ],
      ),
    );
  }
}
