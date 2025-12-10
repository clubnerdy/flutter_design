import 'package:flutter/material.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_detail.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_filter.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_search_box.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeuppang_kakao_map.dart';

class BungeuppangBody extends StatelessWidget {
  const BungeuppangBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BungeuppangKakaoMap(),
        BungeoppangSearchBox(),
        BungeoppangFilter(),
        BungeoppangDetail(),
      ],
    );
  }
}
