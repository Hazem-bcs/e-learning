import 'package:elearnnig/data/model/course_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CourseData {
  final supabase = Supabase.instance.client;

  Future<List<CourseModel>> getMyCourseList(
      int studentId, int colleagueId) async {
    final response = await supabase.rpc('get_trending_course', params: {
      'colleague_id_input': colleagueId,
      'student_id_input': studentId,
    });
    return CourseModel.fromJsonToModel(response);
  }
}
