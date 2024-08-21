import 'package:supabase_flutter/supabase_flutter.dart';

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
