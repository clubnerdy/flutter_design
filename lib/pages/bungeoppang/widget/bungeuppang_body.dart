import 'package:flutter/material.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_detail.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_filter.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_googlemap.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeoppang_search_box.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BungeuppangBody extends StatelessWidget {
  const BungeuppangBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BungeoppangGooglemap(),
        BungeoppangSearchBox(),
        BungeoppangFilter(),
        BungeoppangDetail(),
      ],
    );
  }
}
