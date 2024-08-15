import 'package:flutter/material.dart';

class BlueEdgesWidget extends StatelessWidget {
  const BlueEdgesWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.child,
  });

  final double screenWidth;
  final double screenHeight;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: screenHeight * 0.1,
            right: 0,
            child: Transform.rotate(
              // angle: 43 * (math.pi / 180),
              angle: 45,
              child: Container(
                width: screenWidth,
                height: screenHeight,
                decoration: const BoxDecoration(
                  color: Color(0xFF93C0E1),
                ),
              ),
            ),
          ),
          Container(
            width: screenWidth,
            height: screenHeight,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
