import 'package:elearnnig/data/model/course_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CourseData {
  final supabase = Supabase.instance.client;

  Future<List<CourseModel>> getMyCourseList(int studentId) async {
    final response = await supabase.rpc('get_student_courses', params: {
      'p_student_id': studentId,
    });
    return CourseModel.fromJsonToModel(response);
  }
}
