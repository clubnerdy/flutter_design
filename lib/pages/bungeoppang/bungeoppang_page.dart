import 'package:flutter/material.dart';
import 'package:flutter_design/pages/bungeoppang/widget/bungeuppang_body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BungeoppangPage extends StatelessWidget {
  const BungeoppangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BungeuppangBody(),
      bottomNavigationBar: _BottomNavigationBar(),
    );
  }

  BottomNavigationBar _BottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xFFFF542D),
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      onTap: (_) {},
      items: [
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.solidHouse,
            size: 24,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.pencilAlt,
            size: 24,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.solidComment,
            size: 24,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.solidUser,
            size: 24,
          ),
          label: "",
        ),
      ],
    );
  }
}
