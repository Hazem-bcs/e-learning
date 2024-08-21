import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../constent/routes.dart';
import '../services/services.dart';

class OnBoardingMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.onBoardingSharedPreferences.getString("onBoarding") ==
        "true") {
      return const RouteSettings(name: AppRoutes.loginScreen);
    }
    return null;
  }
}
