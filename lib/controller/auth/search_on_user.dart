import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constent/routes.dart';

abstract class SearchOnUser extends GetxController {
  goToHelpCenterScreen();
  checkIfUserExcised();
  changeIsNotWho();
}

class SearchOnUserImp extends SearchOnUser {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  bool isNotWho = false;

  @override
  checkIfUserExcised() {
    if (formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.verificationScreen);
    }
  }

  @override
  goToHelpCenterScreen() {
    Get.toNamed(AppRoutes.helpCenterScreen);
  }

  @override
  void changeIsNotWho() {
    isNotWho = !isNotWho;
    update();
  }
}
