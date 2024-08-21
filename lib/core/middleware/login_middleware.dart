import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../constent/routes.dart';
import '../services/services.dart';

class LoginMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.loginSharedPreferences.getString("isLogin") == "true") {
      return const RouteSettings(name: AppRoutes.colleagueScreen);
    }
    return null;
  }
}
