import 'package:elearnnig/data/model/student/login_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../model/student.dart';

class LoginStudent {
  final supabase = Supabase.instance.client;
  // init LoginModel
  LoginModel loginModel = LoginModel(isSuccess: false, studentId: 0);
  Future<LoginModel> loginStudent(Student student, bool rememberMe) async {
    final response = await supabase.rpc("verify_user_credentials", params: {
      'p_contact': student.phone,
      'p_password': student.password,
      'p_remember_me': rememberMe
    });
    loginModel.fromJsonToModel(response, rememberMe);
    return loginModel;
  }
}
