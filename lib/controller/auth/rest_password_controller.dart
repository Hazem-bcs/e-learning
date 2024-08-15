import 'package:elearnnig/core/constent/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class RestPasswordController extends GetxController {
  changeObscureText();
  changeObscureText2();
  success();
}

class RestPasswordControllerImp extends RestPasswordController {
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool obscureText = true;
  bool obscureText2 = true;
  bool isSuccess = false;

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
  success() {
    if (formKey.currentState!.validate()) {
      Get.offAllNamed(AppRoutes.loginScreen);
    }
  }
}
