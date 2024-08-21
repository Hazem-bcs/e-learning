import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/enums/handle_error/verify_code/verify_code.dart';
import '../../../model/verify/verify_model.dart';

class VerifyCodeData {
  final supabase = Supabase.instance.client;
  // define just for init
  VerifyModel verifyModel = VerifyModel(
      verificationStatus: VerificationStatus.verificationSuccessful,
      studentId: 1);
  // do verify code function and get the error text and student Id to go home page
  Future<VerifyModel> verifyCode(String verifyCode, String user) async {
    var response = await supabase.rpc("verify_student_code",
        params: {'p_verify_code': verifyCode, 'p_contact': user});
    verifyModel.fromJsonToModel(response);
    return verifyModel;
  }

  // do update verify code
  Future<bool> updateCode(String user) async {
    bool response =
        await supabase.rpc("update_verify_code", params: {'p_contact': user});
    return response;
  }
}
