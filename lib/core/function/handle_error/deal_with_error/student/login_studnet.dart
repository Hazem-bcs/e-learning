import 'package:elearnnig/core/enums/handle_error/student/insert_error_type.dart';
import 'package:elearnnig/data/model/student/login_model.dart';
import 'package:get/get.dart';

import '../../../../constent/routes.dart';
import '../../../my_snack_bar.dart';

void handleLogin(LoginModel loginModel) {
  if (loginModel.isSuccess) {
// show true logo and go to verifyCodeScreen
    Get.offAllNamed(AppRoutes.homePageScreen, arguments: loginModel.studentId);
  } else {
    mySnackBar(
        'phone (email) or password is wrong pleas try again and don\'t cheat');
  }
}
