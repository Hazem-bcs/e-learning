import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';

class ImageWidget extends GetView<OnboardingControllerImp> {
  const ImageWidget({
    super.key,
    required this.color,
    required this.image,
  });
  final Color color;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, child) => Opacity(
        opacity: controller.animationController.value,
        child: Container(
          width: 350,
          height: 350,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(500)),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 30,
                child: Container(
                  width: 290,
                  height: 290,
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(500)),
                ),
              ),
              Positioned(
                top: -0,
                left: -0,
                child: SizedBox(
                    width: 350,
                    height: 350,
                    child: Image.asset(
                      image,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
