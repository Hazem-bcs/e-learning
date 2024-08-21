import 'package:elearnnig/data/model/course_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GetTrendingCourse {
  final supabase = Supabase.instance.client;

  Future<List<CourseModel>> getTrendingCourse(
      int studentId, int colleagueId) async {
    final response = await supabase.rpc('get_trending_courses', params: {
      'student_id_input': studentId,
      'colleague_id_input': colleagueId,
    });
    return CourseModel.fromJsonToModel(response);
  }
}
