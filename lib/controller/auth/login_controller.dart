import 'package:elearnnig/core/function/handle_error/deal_with_error/student/login_studnet.dart';
import 'package:elearnnig/data/data_source/dynamic/student/login_student.dart';
import 'package:elearnnig/data/model/student/login_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constent/routes.dart';
import '../../data/model/student.dart';

abstract class LoginController extends GetxController {
  changeObscureText();
  login();
  goToSignupScreen();
  goToRestPasswordScreen();
  changeRememberMe();
  changeIsNotWho();
  signInWithGoogle();
  signInWithFacebook();
  changeIsLoading();
}

class LoginControllerImp extends LoginController {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final LoginStudent loginStudent = LoginStudent();
  bool obscureText = true;
  bool rememberMe = false;
  bool isNotWho = false;
  // indicator var
  bool isLoading = false;
  // is success
  late LoginModel loginModel;

  // for show this indicator
  @override
  void changeIsLoading() {
    isLoading = !isLoading;
    update();
  }

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
  login() async {
    if (formKey.currentState!.validate()) {
      changeIsLoading();
      final Student student = Student(
          phone: phoneController.value.text,
          password: passwordController.value.text,
          name: '');
      loginModel = await loginStudent.loginStudent(student, rememberMe);
      handleLogin(loginModel);
      changeIsLoading();
    }
  }

  @override
  goToSignupScreen() {
    Get.offNamed(AppRoutes.signupScreen);
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
