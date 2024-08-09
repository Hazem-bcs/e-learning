import 'package:get/get.dart';
import '../services/services.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  // @override
  // RouteSettings? redirect(String? route) {
  //   if(myServices.sharedPreferences.getString("onBoarding") == "true") {
  //     return RouteSettings(name: AppRoute.login);
  //   }
  //   return null;
  // }
}
