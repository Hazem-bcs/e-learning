import 'package:elearnnig/core/constent/routes.dart';
import 'package:elearnnig/core/function/my_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../data/data_source/dynamic/student/reset_password.dart';

abstract class RestPasswordController extends GetxController {
  changeObscureText();

  changeObscureText2();

  success();

  changeIsLoading();
}

class RestPasswordControllerImp extends RestPasswordController {
  final formKey = GlobalKey<FormState>();
  // controller to get data
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  // bool vars for eyes icon
  bool obscureText = true;
  bool obscureText2 = true;
  // to get if rest password process in dataBase is success
  bool isSuccess = false;
  // is loading to show indicator
  bool isLoading = false;
  // get the student_id
  final String arguments = Get.arguments;
  // define dataObject
  ResetPassword dataObject = ResetPassword();
  @override
  void changeObscureText() {
    obscureText = !obscureText;
    update();
  }

  @override
  void changeObscureText2() {
    obscureText2 = !obscureText2;
    update();
  }

  @override
  void changeIsLoading() {
    isLoading = !isLoading;
    update();
  }

  @override
  success() async {
    changeIsLoading();
    if (formKey.currentState!.validate()) {
      // this cuz change argument 21 to int
      // if I do Get.arguments[0] it will get me just 2
      // f I do Get.arguments[1] it will get me just 1
      final int studentId = toInt(arguments)!;
      isSuccess = await dataObject.resetPassword(
          toInt(studentId)!, passwordController.value.text);
      if (isSuccess) {
        mySnackBar('your password is rest try login now', Colors.green);
        Get.offAllNamed(AppRoutes.loginScreen);
      } else {
        mySnackBar('some thing went wrong pleas try again');
      }
    }
    changeIsLoading();
  }
}
