import 'package:flutter/material.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_app_bar.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_card.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_event.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_location.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_order.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_persistent_header.dart';
import 'package:flutter_design/pages/naver_pay/widget/naver_pay_point.dart';

class NaverPayBody extends StatelessWidget {
  const NaverPayBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        NaverPayAppBar(),
        NaverPayPersistentHeader(),
        SliverToBoxAdapter(
          child: Column(
            spacing: 42,
            children: [
              NaverPayCard(),
              NaverPayEvent(),
              NaverPayLocation(),
              NaverPayPiont(),
              NaverPayOrder(),
            ],
          ),
        ),
      ],
    );
  }
}
