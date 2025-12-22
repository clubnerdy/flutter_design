import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KurlySearchBox extends StatelessWidget {
  const KurlySearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoSearchTextField(
        padding: EdgeInsetsGeometry.symmetric(vertical: 10),
        placeholder: '상품명으로 검색해보세요',
        placeholderStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Color(0xFF888888),
        ),
      ),
    );
  }
}
