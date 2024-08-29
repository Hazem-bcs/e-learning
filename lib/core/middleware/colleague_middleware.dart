import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../constent/routes.dart';
import '../services/services.dart';

class ColleagueMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.loginSharedPreferences.getString("skipColleagueScreen") ==
        "true") {
      return const RouteSettings(name: AppRoutes.homeScreen);
    }
    return null;
  }
}
