import 'package:elearnnig/data/model/home/feedback_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GetStudentFeedback {
  final supabase = Supabase.instance.client;

  Future<List<FeedbackModel>> getStudentFeedback() async {
    final response = await supabase.rpc('get_student_feedback');
    return FeedbackModel.fromJsonToModel(response);
  }
}
