import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constent/routes.dart';
import '../../data/data_source/dynamic/student/check_if_email_or_phone_exist.dart';

abstract class SearchOnUser extends GetxController {
  goToHelpCenterScreen();

  checkIfUserExcised();

  changeIsNotWho(bool value);

  changeIsLoading();
}

class SearchOnUserImp extends SearchOnUser {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  bool isNotWho = false;
  bool isLoading = false;

  // define object to get data
  CheckIfEmailOrPhoneExist dataObject = CheckIfEmailOrPhoneExist();
  // is Success
  bool isSuccess = false;

  @override
  checkIfUserExcised() async {
    if (formKey.currentState!.validate()) {
      changeIsLoading();
      isSuccess =
          await dataObject.checkIfEmailOrPhoneExist(emailController.value.text);
      if (isSuccess) {
        Get.toNamed(AppRoutes.verificationScreen,
            arguments: [emailController.value.text, true]);
      } else {
        changeIsNotWho(isSuccess);
      }
      changeIsLoading();
    }
  }

  @override
  goToHelpCenterScreen() {
    Get.toNamed(AppRoutes.helpCenterScreen);
  }

  @override
  void changeIsNotWho(bool value) {
    isNotWho = !value;
    update();
  }

  @override
  changeIsLoading() {
    isLoading = !isLoading;
    update();
  }
}
