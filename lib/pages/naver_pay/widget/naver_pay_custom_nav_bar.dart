import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NaverPayCustomNavBar extends StatelessWidget {
  const NaverPayCustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return SizedBox(
      height: 70 + MediaQuery.of(context).padding.bottom,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // 노치 곡선 커스텀 영역
          Positioned(
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 70 + bottomPadding),
              painter: BottomNavPainter(bottomPadding: bottomPadding),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: bottomPadding,
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNavItem(0, 'icon-money', '자산·송금'),
                  _buildNavItem(1, 'icon-gift', '혜택'),
                  SizedBox(width: 60),
                  _buildNavItem(3, 'icon-chart', '증권'),
                  _buildNavItem(4, 'icon-home', '부동산'),
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 34,
            bottom: 70 + bottomPadding - 52,
            child: Container(
              width: 68,
              height: 68,
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                gradient: LinearGradient(
                  colors: [Color(0xFFFFFFFF), Color(0xFFF3EFF1)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 56,
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF00D85B),
                  ),
                  child: SvgPicture.asset(
                    'assets/naverpay/icon-scan.svg',
                    width: 32,
                    fit: BoxFit.contain,
                    colorFilter: ColorFilter.mode(Color(0xFF464A4C), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 네비게이션 아이템
  Widget _buildNavItem(int index, String imageUrl, String label) {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 70,
        padding: EdgeInsets.only(top: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/naverpay/${imageUrl}.svg',
              width: 30,
              colorFilter: ColorFilter.mode(Color(0xFF464A4C), BlendMode.srcIn),
            ),
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavPainter extends CustomPainter {
  final double bottomPadding;

  BottomNavPainter({required this.bottomPadding});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();
    final navHeight = size.height - bottomPadding;

    // 시작점 (왼쪽 상단)
    path.moveTo(0, 0);

    // 왼쪽에서 중앙 노치까지
    path.lineTo(size.width * 0.35, 0);

    // 노치 시작 - 왼쪽 곡선
    path.quadraticBezierTo(
      size.width * 0.40,
      0,
      size.width * 0.42,
      -3,
    );

    // 노치 중앙 - 원형 곡선 (FAB을 감싸는 부분)
    path.quadraticBezierTo(
      size.width * 0.46,
      -16,
      size.width * 0.50,
      -16,
    );

    // 노치 오른쪽
    path.quadraticBezierTo(
      size.width * 0.54,
      -16,
      size.width * 0.58,
      -3,
    );

    // 노치 끝 - 오른쪽 곡선
    path.quadraticBezierTo(
      size.width * 0.60,
      0,
      size.width * 0.65,
      0,
    );

    // 오른쪽 끝까지
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    // 그림자 효과
    canvas.drawShadow(path, Colors.black26, 8, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BottomNavPainter oldDelegate) => oldDelegate.bottomPadding != bottomPadding;
}
