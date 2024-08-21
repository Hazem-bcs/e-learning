import 'package:elearnnig/data/model/student/login_model.dart';
import 'package:get/get.dart';

import '../../../../constent/routes.dart';
import '../../../../services/services.dart';
import '../../../my_snack_bar.dart';

void handleLogin(LoginModel loginModel) {
  MyServices myServices = Get.find();
  if (loginModel.isSuccess) {
// show true logo and go to verifyCodeScreen
    myServices.loginSharedPreferences
        .setString("studentId", "${loginModel.studentId}");
    if (loginModel.rememberMe ?? true) {
      myServices.loginSharedPreferences.setString("isLogin", "true");
    }
    Get.offAllNamed(AppRoutes.colleagueScreen);
  } else {
    mySnackBar(
        'phone (email) or password is wrong pleas try again and don\'t cheat');
  }
}
