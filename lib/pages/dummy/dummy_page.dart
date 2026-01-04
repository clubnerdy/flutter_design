import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DummyPage extends StatefulWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  final List<CarouselItem> items = [
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '타이틀 1',
      description: '설명 1',
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '타이틀 2',
      description: '설명 2',
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '타이틀 3',
      description: '설명 3',
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '타이틀 4',
      description: '설명 4',
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '타이틀 5',
      description: '설명 5',
    ),
    CarouselItem(
      imageUrl: 'dummy-box.png',
      title: '타이틀 6',
      description: '설명 6',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('캐러셀 테스트 페이지'),
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: items.length,
          itemBuilder: (context, index, realIndex) {
            return _buildCarouselCard(items[index]);
          },
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.5,
            initialPage: 0,
            enableInfiniteScroll: true,
            //enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }

  Widget _buildCarouselCard(CarouselItem item) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 이미지
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              'assets/${item.imageUrl}',
              width: double.infinity,
              height: 20,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          // 텍스트 영역 1
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          // 텍스트 영역 2
          Text(
            item.description,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
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

  CarouselItem({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}
