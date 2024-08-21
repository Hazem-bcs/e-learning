import 'package:supabase_flutter/supabase_flutter.dart';

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
