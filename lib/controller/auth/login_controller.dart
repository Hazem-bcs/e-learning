import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constent/routes.dart';

abstract class LoginController extends GetxController {
  changeObscureText();
  login();
  goToSignupScreen();
  goToRestPasswordScreen();
  changeRememberMe();
  changeIsNotWho();
  signInWithGoogle();
  signInWithFacebook();
}

class LoginControllerImp extends LoginController {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureText = true;
  bool rememberMe = false;
  bool isNotWho = false;

  @override
  void changeRememberMe() {
    rememberMe = !rememberMe;
    update();
  }

  @override
  void changeIsNotWho() {
    isNotWho = !isNotWho;
    update();
  }

  @override
  changeObscureText() {
    obscureText = !obscureText;
    update();
  }

  @override
  login() {
    if (formKey.currentState!.validate()) {
      print("object");
      // Get.toNamed(AppRoute.homeScreen);
    }
  }

  @override
  goToSignupScreen() {
    Get.toNamed(AppRoutes.signupScreen);
  }

  @override
  goToRestPasswordScreen() {
    Get.toNamed(AppRoutes.searchOnUserScreen);
  }

  @override
  signInWithFacebook() {
    // TODO: implement signInWithFacebook
  }

  @override
  signInWithGoogle() {
    // TODO: implement signInWithGoogle
  }
}
