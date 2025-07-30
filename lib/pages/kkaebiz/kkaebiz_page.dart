import 'package:flutter/material.dart';
import 'package:mydoc_mainscroll/pages/kkaebiz/widget/kkaebiz_body.dart';

class KkaebizPage extends StatefulWidget {
  const KkaebizPage({super.key});

  @override
  State<KkaebizPage> createState() => _KkaebizPageState();
}

class _KkaebizPageState extends State<KkaebizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      backgroundColor: Color(0xFFF7F7F7),
      body: KkaebizBody(),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFFF2F1F2),
          ),
          child: Icon(Icons.arrow_back_ios_new_sharp),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        '타이머 설정',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      backgroundColor: Color(0xFFF7F7F7),
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
    );
  }
}
