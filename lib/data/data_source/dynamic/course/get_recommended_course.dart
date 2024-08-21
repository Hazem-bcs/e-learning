import 'package:elearnnig/data/model/course_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GetRecommendedCourse {
  final supabase = Supabase.instance.client;

  Future<List<CourseModel>> getRecommendedCourse(
      int studentId, int colleagueId) async {
    final response = await supabase.rpc('get_recommended_courses', params: {
      'student_id_input': studentId,
      'colleague_id_input': colleagueId,
    });
    return CourseModel.fromJsonToModel(response);
  }
}
