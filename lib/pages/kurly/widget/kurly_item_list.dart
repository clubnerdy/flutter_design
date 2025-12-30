import 'package:flutter/material.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_detail_item.dart';

class KurlyItemList extends StatelessWidget {
  const KurlyItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        KurlyDetailItem(
          imageUrl: 'goguma.jpg',
          label: '샛별배송',
          itemName: '[KF365] 호박고구마 800g/봉',
          description: '[KF365] 호박고구마 800g (25년 햇)',
          currentPrice: '5,990',
          price: '7,690',
          count: 1,
        ),
        KurlyDetailItem(
          imageUrl: 'kkaennip.jpg',
          label: '샛별배송',
          itemName: '한끼 깻잎 30g',
          currentPrice: '1,790',
          count: 1,
        ),
        KurlyDetailItem(
          imageUrl: 'kongnamul.jpg',
          label: '샛별배송',
          itemName: '[KF365] 무농약 국산콩 콩나물 300g',
          currentPrice: '1,190',
          price: '1,590',
          count: 1,
        ),
      ],
    );
  }
}
