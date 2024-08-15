import 'package:elearnnig/core/constent/routes.dart';
import 'package:get/get.dart';

abstract class VerificationCodeController extends GetxController {
  checkIfWho();
}

class VerificationCodeControllerImp extends VerificationCodeController {
  bool isNowWho = false;
  String user = "0941538381";
  @override
  checkIfWho() {
    // here I should put the Logic to check if the user
    // Enter a correct code
    Get.offNamed(AppRoutes.restPasswordScreen);
  }
}
