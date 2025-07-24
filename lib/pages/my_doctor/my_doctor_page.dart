import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mydoc_mainscroll/pages/my_doctor/widget/actionsList.dart';

class MyDoctorPage extends StatelessWidget {
  const MyDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAEBEF),
      appBar: AppBar(
        title: Image.asset(
          'assets/mydoc_logo.png',
          width: 120,
        ),
        actions: commonList,
        backgroundColor: Color(0xFFEAEBEF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            // 포인트박스 영역
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFEBF5FF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.gift,
                                  size: 12,
                                  color: Color(0xFF4483FE),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "매일 포인트박스 4개",
                                  style: TextStyle(
                                    color: Color(0xFF4483FE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "힌트보기",
                                style: TextStyle(
                                  color: Color(0xFF9A9A9A),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: Color(0xFF9A9A9A),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Q.",
                          style: TextStyle(
                            color: Color(0xFF4483FE),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Text(
                            "운동과 반신욕 등으로 혈액순환을 돕는 것은 수족냉증 완화에 도움이 된다.",
                            style: TextStyle(
                              color: Color(0xFF444444),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xFFDDDDDD),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 52),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.checkCircle,
                                    size: 18,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "그렇다",
                                    style: TextStyle(
                                      color: Color(0xFF444444),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xFFDDDDDD),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 52),
                              child: Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.xmarkCircle,
                                    size: 18,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "아니다",
                                    style: TextStyle(
                                      color: Color(0xFF444444),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // nav box 영역
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 72,
                          child: Image.asset("assets/location_1.png"),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "약국 찾기",
                          style: TextStyle(
                            color: Color(0xFF444444),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 64,
                          child: Image.asset("assets/baby.png"),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "우리 아이\n건강 기록",
                          style: TextStyle(
                            color: Color(0xFF444444),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          child: Image.asset("assets/coin.png"),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "리워드 1등\n만보기",
                          style: TextStyle(
                            color: Color(0xFF444444),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            // slide banner 영역
            Stack(
              alignment: Alignment(1.0, 1.0),
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "주말/야간/어린이 약국 찾기",
                              style: TextStyle(
                                color: Color(0xFF4483FE),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "365일 24시간 약국을 찾고 싶을 때",
                              style: TextStyle(
                                color: Color(0xFF4483FE),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 64,
                          child: Image.asset("assets/map_1.png"),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Text(
                        "2 / 5",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            // 진료과목 영역
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F3F4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Text(
                                    "비대면진료",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF4483FE),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "최저가 병원 예약",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFAAAAAA),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CategoryList(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFFEEEEEE),
                            ),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "모든 증상 보기",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF9A9A9A),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  color: Color(0xFF9A9A9A),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
            // footer
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    FooterInk(label: "이용약관", isFirst: true),
                    Container(
                      width: 1,
                      height: 12,
                      color: Color(0xFF333333),
                    ),
                    FooterInk(label: "개인정보처리방침"),
                    Container(
                      width: 1,
                      height: 12,
                      color: Color(0xFF333333),
                    ),
                    FooterInk(label: "위치기반서비스이용약관"),
                  ],
                ),
                SizedBox(height: 6),
                Text(
                  "광고문의 : sales@merakiplace.kr",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "(주) 메라키플레이스",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),

            // 하단 메세지 박스도 구현해야함
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black, // 선택된 아이콘/텍스트 색
        unselectedItemColor: Colors.grey, // 선택 안된 아이콘/텍스트 색
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        type: BottomNavigationBarType.fixed, // 라벨 항상 보이게
        currentIndex: 0, // 선택된 인덱스
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
      ),
    );
  }
}

class FooterInk extends StatelessWidget {
  final String label;
  final bool isFirst;

  FooterInk({
    super.key,
    required this.label,
    this.isFirst = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(
          left: isFirst ? 0 : 8,
          right: 8,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        CategoryItem(label: "감기 · 비염", img: "01.png"),
        CategoryItem(label: "소아과", img: "02.png"),
        CategoryItem(label: "탈모약 처방", img: "03.png"),
        CategoryItem(label: "다이어트", img: "04.png"),
        CategoryItem(label: "보습제", img: "05.png"),
        CategoryItem(label: "안과 · 인공눈물", img: "06.png"),
        CategoryItem(label: "여드름", img: "07-1.png"),
        CategoryItem(label: "피부질환", img: "08.png"),
        CategoryItem(label: "여성질환", img: "09.png"),
        CategoryItem(label: "헤르페스", img: "10.png"),
        CategoryItem(label: "당뇨 · 고혈압", img: "11.png"),
        CategoryItem(label: "비뇨기과", img: "12.png"),
        CategoryItem(label: "위장장애", img: "13.png"),
        CategoryItem(label: "코로나 진료", img: "14.png"),
        CategoryItem(label: "우울증 · 정신", img: "15.png"),
        CategoryItem(label: "노로 바이러스", img: "16.png"),
        CategoryItem(label: "한방처방", img: "17.png"),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String label;
  final String img;

  const CategoryItem({
    super.key,
    required this.label,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          child: Image.asset(
            'assets/$img',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "$label",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF888888),
          ),
        ),
      ],
    );
  }
}
