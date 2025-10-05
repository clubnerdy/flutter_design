import 'package:flutter/material.dart';

class NhrCarousel extends StatelessWidget {
  const NhrCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: Placeholder(),
      ),
    );
  }
}
