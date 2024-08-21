import 'package:elearnnig/data/data_source/dynamic/student/insert_student.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constent/routes.dart';
import '../../core/enums/handle_error/student/insert_error_type.dart';
import '../../core/function/handle_error/deal_with_error/student/insert_error.dart';
import '../../data/model/student.dart';

abstract class SignupController extends GetxController {
  changeObscureText();

  changeObscureText2();

  signUp();

  goToSignupWithEmail();

  goToLoginScreen();

  changeIsLoading();
}

class SignupControllerImp extends SignupController {
  // define Controllers for get the values
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
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
  bool isLoading = false;

  // for show this indicator
  @override
  void changeIsLoading() {
    isLoading = !isLoading;
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
      changeIsLoading();
      final Student student = Student(
          name: nameController.value.text,
          phone: phoneController.value.text,
          password: passwordController.value.text);
      insertStudentError = await insertStudent.insertStudent(student);
      handleInsertError(insertStudentError, phoneController.value.text);
      changeIsLoading();
    }
  }

  @override
  goToLoginScreen() {
    Get.offNamed(AppRoutes.loginScreen);
  }

  @override
  void dispose() {
    // Dispose controllers to prevent memory leaks
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  goToSignupWithEmail() {
    Get.offNamed(AppRoutes.signupScreenWithEmail);
  }
}
