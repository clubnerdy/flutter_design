import 'package:flutter/material.dart';
import 'package:mydoc_mainscroll/pages/kkaebiz/widget/kkaebiz_bottom_btn.dart';
import 'package:mydoc_mainscroll/pages/kkaebiz/widget/kkaebiz_character.dart';
import 'package:mydoc_mainscroll/pages/kkaebiz/widget/kkaebiz_comment_box.dart';
import 'package:mydoc_mainscroll/pages/kkaebiz/widget/kkaebiz_picker.dart';
import 'package:mydoc_mainscroll/pages/kkaebiz/widget/kkaebiz_slider.dart';

class KkaebizBody extends StatelessWidget {
  const KkaebizBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              KkaebizCharacter(),
              SizedBox(height: 22),
              KkabizCommentBox(),
              SizedBox(height: 24),
              KkaebizSlider(),
              SizedBox(height: 44),
              KkaebizPicker(),
            ],
          ),
          KkaebizBottomBtn(),
        ],
      ),
    );
  }
}
