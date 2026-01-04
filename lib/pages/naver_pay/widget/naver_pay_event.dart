import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NaverPayEvent extends StatefulWidget {
  const NaverPayEvent({
    super.key,
  });

  @override
  State<NaverPayEvent> createState() => _NaverPayEventState();
}

class _NaverPayEventState extends State<NaverPayEvent> {
  final List<CarouselItem> items = [
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '모바일 교통카드',
      description: '최대 14%',
      backgroundColorCode: AppColors.green,
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: 'CU NPay카드',
      description: '20%+20% 혜택',
      backgroundColorCode: AppColors.purple,
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '모바일 더블혜택',
      description: '최대10%',
      backgroundColorCode: AppColors.green,
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '모바일 교통카드',
      description: '최대 14%',
      backgroundColorCode: AppColors.green,
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: 'CU NPay카드',
      description: '20%+20% 혜택',
      backgroundColorCode: AppColors.purple,
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '모바일 더블혜택',
      description: '최대10%',
      backgroundColorCode: AppColors.green,
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '모바일 더블혜택',
      description: '최대10%',
      backgroundColorCode: AppColors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 6,
            children: [
              Text(
                '네이버페이',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF14D86B),
                ),
              ),
              Text(
                '이달의 이벤트',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 240,
          child: CarouselSlider.builder(
            itemCount: items.length,
            itemBuilder: (context, index, realIndex) {
              return _buildCarouselCard(items[index]);
            },
            options: CarouselOptions(
              height: 240,
              viewportFraction: 0.5,
              initialPage: 0,
              enableInfiniteScroll: true,
              //enlargeCenterPage: true,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCarouselCard(CarouselItem item) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: item.backgroundColorCode,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              'assets/${item.imageUrl}',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 32),
          Text(
            item.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Text(
            item.description,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}

class CarouselItem {
  final String imageUrl;
  final String title;
  final String description;
  final Color backgroundColorCode;

  CarouselItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.backgroundColorCode,
  });
}

class AppColors {
  static const green = Color(0xFF00BF5C);
  static const purple = Color(0xFF612399);
}
