import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences onBoardingSharedPreferences;
  late SharedPreferences loginSharedPreferences;

  Future<MyServices> init() async {
    onBoardingSharedPreferences = await SharedPreferences.getInstance();
    loginSharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
