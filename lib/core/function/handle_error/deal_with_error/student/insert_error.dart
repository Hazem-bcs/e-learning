import 'package:elearnnig/core/enums/handle_error/student/insert_error_type.dart';
import 'package:get/get.dart';

import '../../../../constent/routes.dart';
import '../../../my_snack_bar.dart';

void handleInsertError(InsertStudentError insertStudentError, [String? user]) {
  if (insertStudentError == InsertStudentError.insertionSuccessful) {
// show true logo and go to verifyCodeScreen
    Get.toNamed(AppRoutes.verificationScreen, arguments: [user, false]);
  } else if (insertStudentError == InsertStudentError.phoneNotVerifiedYet ||
      insertStudentError == InsertStudentError.emailNotVerifiedYet) {
// show massage
    Get.toNamed(AppRoutes.verificationScreen, arguments: [user, false]);
  } else if (insertStudentError == InsertStudentError.emailAlreadyExists ||
      insertStudentError == InsertStudentError.phoneNotVerifiedYet) {
    mySnackBar('this email already exist');
  } else {
    mySnackBar('some thing happen wrong try again pleas');
  }
}
