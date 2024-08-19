import 'package:elearnnig/data/data_source/dynamic/student/insert_student.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constent/routes.dart';
import '../../core/enums/handle_error/student/insert_error_type.dart';
import '../../core/function/handle_error/deal_with_error/student/insert_error.dart';
import '../../data/model/student.dart';

abstract class SignupWithEmailController extends GetxController {
  changeObscureText();

  changeObscureText2();

  signUp();

  goToSignupWithPhone();

  goToLoginScreen();

  changeIndicator();
}

class SignupWithEmailControllerImp extends SignupWithEmailController {
  // define Controllers for get the values
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  // this tow var for eye icons in TextField
  bool obscureText = true;
  bool obscureText2 = true;
  // this for result if user insert or not
  late InsertStudentError insertStudentError;
  // to call function insert student
  final InsertStudent insertStudent = InsertStudent();
  // indicator var
  bool indicator = false;

// for show this indicator
  @override
  void changeIndicator() {
    indicator = !indicator;
    update();
  }

  // this tow functions for eye icons in TextField
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
  signUp() async {
    if (formKey.currentState!.validate()) {
      // turn on the indicator
      changeIndicator();
      final Student student = Student(
          name: nameController.value.text,
          email: emailController.value.text,
          password: passwordController.value.text);
      insertStudentError = await insertStudent.insertStudent(student);
      handleInsertError(insertStudentError, emailController.value.text);
      // turn off the indicator
      changeIndicator();
    }
  }

  @override
  goToLoginScreen() {
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

  @override
  goToSignupWithPhone() {
    Get.offNamed(AppRoutes.signupScreen);
  }
}
