import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../model/student/teacher_model.dart';

class GetTop4InstructorsByColleague {
  final supabase = Supabase.instance.client;
  Future<List<TeacherModel>> getTop4InstructorsByColleague(
      int colleagueId) async {
    final response =
        await supabase.rpc("get_top_4_instructors_by_colleague", params: {
      'colleague_id_input': colleagueId,
    });

    return TeacherModel.fromJsonToModel(response);
  }
}
