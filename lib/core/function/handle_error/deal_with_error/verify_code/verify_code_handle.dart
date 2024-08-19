import 'package:get/get.dart';

import '../../../../../data/model/verify/verify_model.dart';
import '../../../../constent/routes.dart';
import '../../../../enums/handle_error/verify_code/verify_code.dart';
import '../../../my_snack_bar.dart';

void verifyCodeHandle(VerifyModel verifyModel, bool goToRestScreen) {
  switch (verifyModel.verificationStatus) {
    case VerificationStatus.verificationSuccessful:
      if (goToRestScreen) {
        Get.offAllNamed(AppRoutes.restPasswordScreen,
            arguments: verifyModel.studentId.toString());
      } else {
        Get.offAllNamed(AppRoutes.homePageScreen,
            arguments: verifyModel.studentId);
      }
      break;
    case VerificationStatus.verificationCodeExpired:
      mySnackBar('Verification code expired try resend');
      break;
    case VerificationStatus.invalidVerificationCode:
      mySnackBar('Invalid verification code');
      break;
    case VerificationStatus.studentNotFound:
      mySnackBar('can you back and retry');
      break;
    default:
      mySnackBar('some thing wrong happen');
      break;
  }
}
