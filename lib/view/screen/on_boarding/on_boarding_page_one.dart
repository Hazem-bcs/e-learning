import 'package:flutter/material.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                  color: const Color(0xFFd9d9d9),
                  borderRadius: BorderRadius.circular(500)),
              child: Image.asset(
                  'assets/images/on_boarding/onBoardingImageOne.png'),
            )
          ],
        ),
      ),
    );
  }
}
