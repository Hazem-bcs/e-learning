import 'package:elearnnig/core/enums/handle_error/student/insert_error_type.dart';
import 'package:elearnnig/data/model/student/login_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/function/handle_error/parse_error/student/return_insert_error_type.dart';
import '../../../model/student.dart';

class ResetPassword {
  final supabase = Supabase.instance.client;
  // init LoginModel
  bool isSuccess = false;
  Future<bool> resetPassword(int user, String newPassword) async {
    final response = await supabase.rpc("update_student_password",
        params: {'p_student_id': user, 'p_new_password': newPassword});
    isSuccess = response;
    return isSuccess;
  }
}
