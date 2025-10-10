import 'package:flutter/material.dart';

class NhrCarousel extends StatelessWidget {
  const NhrCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        color: Color(0xFFCFCFCF),
        alignment: Alignment.center,
        child: const Text('여기 상단 헤더(배너/필터 등)'),
      ),
    );
  }
}
