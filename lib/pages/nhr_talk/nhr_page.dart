import 'package:flutter/material.dart';
import 'package:flutter_design/pages/nhr_talk/widget/nhr_body.dart';

class NhrPage extends StatelessWidget {
  const NhrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NhrBody(),
      backgroundColor: Color(0xFFFFFFFF),
    );
  }
}
