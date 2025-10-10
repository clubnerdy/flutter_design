import 'package:flutter/material.dart';
import 'package:flutter_design/pages/nhr_talk/widget/nhr_carousel.dart';
import 'package:flutter_design/pages/nhr_talk/widget/nhr_contents.dart';
import 'package:flutter_design/pages/nhr_talk/widget/nhr_sliver_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NhrPage extends StatelessWidget {
  const NhrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            NhrCarousel(),
            NhrSliverHeader(),
            NhrContents(),
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
      unselectedItemColor: Color(0xFF808080),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xB3F3F3F3),
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
