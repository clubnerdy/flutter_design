import 'package:flutter/material.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_detail_box.dart';

class BungeoppangDetailView extends StatelessWidget {
  const BungeoppangDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: CarouselView(
        itemExtent: 340,
        shrinkExtent: 340,
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          BungeoppangDetailBox(
            tag: '붕어빵',
            name: 'HODU BOOM (강남역 2호점)',
            label: 26,
            comment: 1,
            location: 10,
          ),
          BungeoppangDetailBox(
            tag: '붕어빵',
            name: 'HODU BOOM (강남역 2호점)',
            label: 26,
            comment: 1,
            location: 10,
          ),
          BungeoppangDetailBox(
            tag: '붕어빵',
            name: 'HODU BOOM (강남역 2호점)',
            label: 26,
            comment: 1,
            location: 10,
          ),
        ],
      ),
    );
  }
}
