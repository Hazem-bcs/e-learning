import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constent/routes.dart';

abstract class SignupController extends GetxController {
  changeObscureText();
  changeObscureText2();
  signUp();
  login();
}

class SignupControllerImp extends SignupController {
  // define Controllers
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool obscureText = true;
  bool obscureText2 = true;

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
  signUp() {
    if (formKey.currentState!.validate()) {
      print("object");
      // Get.toNamed(AppRoute.verifyCodeSingUp);
    }
  }

  @override
  login() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  @override
  void dispose() {
    // Dispose controllers to prevent memory leaks
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

}
