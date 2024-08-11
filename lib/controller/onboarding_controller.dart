import 'package:elearnnig/core/constent/routes.dart';
import 'package:elearnnig/data/data_source/statics/onboarding_model.dart';
import 'package:elearnnig/data/model/onboarding/onboarding_model.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController
    with GetTickerProviderStateMixin {
  incrementCounter();
  decrementCounter();
}

class OnboardingControllerImp extends OnboardingController {
  int _counter = -1;
  late AnimationController animationController;

  int get counter => _counter;

  set counter(int value) {
    if (value != listOnboardings.length) {
      _counter = value;
      update();
    } else {
      Get.toNamed(AppRoutes.loginScreen);
    }
  }

  // Lists
  List<OnboardingModel> listOnboardings =
      listOnboarding; // this coming from static data

  @override
  void incrementCounter() {
    if (_counter + 1 != listOnboardings.length) {
      _counter++;
      animationController.forward(from: 0.0);
      update();
    } else {
      Get.toNamed(AppRoutes.loginScreen);
    }
  }

  @override
  void decrementCounter() {
    _counter--;
    animationController.reverse(from: 1.0);
    animationController.forward(from: 0.0);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this, // GetX provides vsync capability
      duration: const Duration(milliseconds: 500),
    );
    incrementCounter();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
