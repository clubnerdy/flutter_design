import 'package:flutter/material.dart';
import 'package:mydoc_mainscroll/pages/my_doctor/widget/medical_nav/medical_nav_item.dart';

class MedicalNavList extends StatelessWidget {
  const MedicalNavList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          MedicalNavItem(label: "감기 · 비염", img: "01.png"),
          MedicalNavItem(label: "소아과", img: "02.png"),
          MedicalNavItem(label: "탈모약 처방", img: "03.png"),
          MedicalNavItem(label: "다이어트", img: "04.png"),
          MedicalNavItem(label: "보습제", img: "05.png"),
          MedicalNavItem(label: "안과 · 인공눈물", img: "06.png"),
          MedicalNavItem(label: "여드름", img: "07-1.png"),
          MedicalNavItem(label: "피부질환", img: "08.png"),
          MedicalNavItem(label: "여성질환", img: "09.png"),
          MedicalNavItem(label: "헤르페스", img: "10.png"),
          MedicalNavItem(label: "당뇨 · 고혈압", img: "11.png"),
          MedicalNavItem(label: "비뇨기과", img: "12.png"),
          MedicalNavItem(label: "위장장애", img: "13.png"),
          MedicalNavItem(label: "코로나 진료", img: "14.png"),
          MedicalNavItem(label: "우울증 · 정신", img: "15.png"),
          MedicalNavItem(label: "노로 바이러스", img: "16.png"),
          MedicalNavItem(label: "한방처방", img: "17.png"),
        ],
      ),
    );
  }
}
