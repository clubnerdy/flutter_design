import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mydoc_mainscroll/pages/my_doctor/widget/my_doctor_body.dart';
import 'package:mydoc_mainscroll/pages/my_doctor/widget/public/actionsList.dart';

class MyDoctorPage extends StatelessWidget {
  const MyDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAEBEF),
      appBar: _appbar(),
      body: MyDoctorBody(),
      bottomNavigationBar: _bottomnavigation(),
    );
  }

  BottomNavigationBar _bottomnavigation() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(color: Colors.black),
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      onTap: (_) {},
      items: [
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.home,
            size: 16,
          ),
          label: "홈",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.trophy,
            size: 16,
          ),
          label: "혜택",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.heart,
            size: 16,
          ),
          label: "건강관리",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.flask,
            size: 16,
          ),
          label: "건강연구소",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.user,
            size: 16,
          ),
          label: "내 정보",
        ),
      ],
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: Image.asset(
        'assets/mydoc_logo.png',
        width: 120,
      ),
      actions: commonList,
      backgroundColor: Color(0xFFEAEBEF),
    );
  }
}
