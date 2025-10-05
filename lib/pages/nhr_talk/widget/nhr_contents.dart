import 'package:flutter/material.dart';

class NhrContents extends StatelessWidget {
  const NhrContents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(title: Text('Item $index')),
        childCount: 50,
      ),
    );
  }
}
