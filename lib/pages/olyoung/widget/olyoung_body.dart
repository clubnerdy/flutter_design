import 'package:flutter/material.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_container.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_persistent_header.dart';
import 'package:flutter_design/pages/olyoung/widget/olyoung_sliver_app_bar.dart';

class OlyoungBody extends StatelessWidget {
  const OlyoungBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        OlyoungSliverAppBar(),
        OlyoungPersistentHeader(),
        OlyoungContainer(),
      ],
    );
  }
}
