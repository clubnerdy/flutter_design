import 'package:flutter/material.dart';
import 'package:flutter_design/pages/my_doctor/widget/medical_nav/medical_nav_btn.dart';
import 'package:flutter_design/pages/my_doctor/widget/medical_nav/medical_nav_list.dart';
import 'package:flutter_design/pages/my_doctor/widget/medical_nav/medical_nav_tab.dart';

class MedicalNav extends StatelessWidget {
  const MedicalNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            MedicalNavTab(),
            MedicalNavList(),
            MedicalNavBtn(),
          ],
        ),
      ),
    );
  }
}
