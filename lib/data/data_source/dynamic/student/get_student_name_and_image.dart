import 'package:elearnnig/data/model/student/student_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GetStudentNameAndImage {
  final supabase = Supabase.instance.client;
  Future<List<StudentModel>> getStudentNameAndImage(int studentId) async {
    final response = await supabase.rpc("get_student_name_and_image", params: {
      'student_id_input': studentId,
    });

    return StudentModel.fromJsonToModel(response);
  }
}
