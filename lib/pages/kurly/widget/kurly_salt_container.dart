import 'package:flutter/material.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_search_box.dart';
import 'package:flutter_design/pages/kurly/widget/kurly_select_box.dart';

class KurlySaltContainer extends StatelessWidget {
  const KurlySaltContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          KurlySelectBox(),
          SizedBox(width: 8),
          KurlySearchBox(),
        ],
      ),
    );
  }
}
