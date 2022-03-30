import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeScreen extends StatelessWidget {
  LiquidSwipeScreen({Key? key}) : super(key: key);

  final pages = [
    SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/image1.jpg',
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/image2.jpg',
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/image3.jpg',
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/image4.jpg',
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/image5.jpg',
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Builder(
          builder: (context) {
            return LiquidSwipe(
              pages: pages,
              fullTransitionValue: 880,
              waveType: WaveType.liquidReveal,
              slideIconWidget: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              enableLoop: false,
              positionSlideIcon: 0.8,
              onPageChangeCallback: (page) {
                print(page);
              },
              liquidController: LiquidController(),
            );
          },
        ),
      ),
    );
  }
}
