import 'package:flutter/material.dart';
import 'package:mydoc_mainscroll/pages/my_doctor/widget/Quiz/quiz_point.dart';
import 'package:mydoc_mainscroll/pages/my_doctor/widget/footer.dart';
import 'package:mydoc_mainscroll/pages/my_doctor/widget/medical_nav/medical_nav.dart';
import 'package:mydoc_mainscroll/pages/my_doctor/widget/quick_nav.dart';
import 'package:mydoc_mainscroll/pages/my_doctor/widget/slide_banner.dart';

class MyDoctorBody extends StatelessWidget {
  const MyDoctorBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          // 포인트박스 영역
          QuizPoint(),
          SizedBox(height: 16),
          // nav box 영역
          QuickNav(),
          SizedBox(height: 16),
          // slide banner 영역
          SlideBanner(),
          SizedBox(height: 16),
          // 진료과목 영역
          MedicalNav(),
          SizedBox(height: 60),
          // footer
          Footer(),
          // 하단 메세지 박스도 구현해야함
        ],
      ),
    );
  }
}
