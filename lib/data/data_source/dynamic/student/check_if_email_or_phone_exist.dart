import 'package:elearnnig/core/enums/handle_error/student/insert_error_type.dart';
import 'package:elearnnig/data/model/student/login_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/function/handle_error/parse_error/student/return_insert_error_type.dart';
import '../../../model/student.dart';

class CheckIfEmailOrPhoneExist {
  final supabase = Supabase.instance.client;
  // init LoginModel
  bool isSuccess = false;
  Future<bool> checkIfEmailOrPhoneExist(String user) async {
    final response = await supabase.rpc("check_contact_exists", params: {
      'p_contact': user,
    });
    isSuccess = response;
    return isSuccess;
  }
}
