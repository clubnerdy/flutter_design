import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class KkaebizCharacter extends StatelessWidget {
  const KkaebizCharacter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44),
      child: Center(
        child: Container(
          width: 125,
          height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xFFFC6F3D),
          ),
          child: Lottie.asset('assets/kkaebiz/kkaebiz.json'),
        ),
      ),
    );
  }
}
