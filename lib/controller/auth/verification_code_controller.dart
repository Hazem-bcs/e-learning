import 'package:elearnnig/core/function/handle_error/deal_with_error/verify_code/verify_code_handle.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/function/handle_error/deal_with_error/verify_code/handle_update_verify_code.dart';
import '../../data/data_source/dynamic/verify_code/verify_code_data.dart';
import '../../data/model/verify/verify_model.dart';

abstract class VerificationCodeController extends GetxController {
  checkIfWho(String verificationCode);

  restTheCode();

  changeIsLoading();
}

class VerificationCodeControllerImp extends VerificationCodeController {
  // get user from sign up screen
  final String user = Get.arguments[0];
  final bool goToRestScreen = Get.arguments[1];
  bool isLoading = false;
  bool isNowWho = false;
  // if update verify code success
  bool updateVerifyCode = false;
  // to get data
  VerifyCodeData verifyCodeData = VerifyCodeData();
  //
  late VerifyModel verifyModel;

  @override
  checkIfWho(String verificationCode) async {
    changeIsLoading();
    verifyModel = await verifyCodeData.verifyCode(verificationCode, user);
    changeIsLoading();
    verifyCodeHandle(verifyModel, goToRestScreen);
  }

  @override
  restTheCode() async {
    changeIsLoading();
    updateVerifyCode = await verifyCodeData.updateCode(user);
    changeIsLoading();
    handleUpdateVerifyCode(updateVerifyCode);
  }

  @override
  changeIsLoading() {
    isLoading = !isLoading;
    update();
  }
}
