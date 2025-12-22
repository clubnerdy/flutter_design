import 'package:flutter/material.dart';

class KurlyPage extends StatelessWidget {
  const KurlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            width: 60,
            height: 60,
            child: Image.asset('assets/kurly/icon-arrow-right'),
          ),
        ),
      ),
    );
  }
}
