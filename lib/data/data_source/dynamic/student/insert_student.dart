import 'package:elearnnig/core/enums/handle_error/student/insert_error_type.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/function/handle_error/parse_error/student/return_insert_error_type.dart';
import '../../../model/student.dart';

class InsertStudent {
  final supabase = Supabase.instance.client;
  late final String status;
  //InsertStudentError
  Future<InsertStudentError> insertStudent(Student student) async {
    final status = await supabase.rpc("insert_student", params: {
      'p_email': student.email,
      'p_phone': student.phone,
      'p_name': student.name,
      'p_password': student.password,
    });
    return parseInsertStudentStatus(status);
  }
}
