import 'package:flutter/material.dart';

class NhrCarousel extends StatefulWidget {
  const NhrCarousel({
    super.key,
  });

  @override
  State<NhrCarousel> createState() => _NhrCarouselState();
}

class _NhrCarouselState extends State<NhrCarousel> {
  final _controller = PageController(viewportFraction: 1.0);
  int _current = 0;

  void dipose() {
    _controller.dispose();
    super.dispose();
  }

  final pages = <Widget>[
    _Card(),
    _Card(),
    _Card(),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        height: 240,
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              physics: const PageScrollPhysics(),
              onPageChanged: (i) => setState(() => _current = i),
              itemBuilder: (_, i) => pages[i],
              padEnds: false,
              pageSnapping: true,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 14,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(pages.length, (i) {
                    final isActive = _current == i;
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: GestureDetector(
                        onTap: () => _controller.animateToPage(
                          i,
                          duration: Duration(milliseconds: 280),
                          curve: Curves.easeOut,
                        ),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                            color: isActive ? Colors.white : Color(0x99000000),
                            borderRadius: BorderRadius.circular(999),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/nhr/banner.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
