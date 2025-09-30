import 'package:flutter/material.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_detail_view.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_salt.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_social.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BungeoppangDetail extends StatelessWidget {
  const BungeoppangDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 12,
      right: 0,
      left: 0,
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BungeoppangSocial(),
          BungeoppangSalt(),
          BungeoppangDetailView(),
        ],
      ),
    );
  }
}
