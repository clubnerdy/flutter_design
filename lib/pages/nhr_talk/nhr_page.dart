import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NhrPage extends StatelessWidget {
  const NhrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Placeholder(),
            ),
            CustomScrollView(),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNavigationBar(),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Color(0xFF000000),
      unselectedItemColor: Color(0xFF000000),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (_) {},
      items: [
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.houseUser,
            size: 20,
          ),
          label: '메뉴1',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.houseUser,
            size: 20,
          ),
          label: '메뉴2',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.houseUser,
            size: 20,
          ),
          label: '메뉴3',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.houseUser,
            size: 20,
          ),
          label: '메뉴4',
        ),
      ],
    );
  }
}
