import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../model/course_model.dart';

class SearchCourseData {
  final supabase = Supabase.instance.client;

  Future<List<CourseModel>> getSearchCourseList(
    int studentId,
    String searchText,
    bool? isFirstYear,
    bool? isSecondYear,
    bool? isThirdYear,
    bool? isFourthYear,
    bool? isFifthYear,
    bool? isFree,
    bool? isPaid,
  ) async {
    final response = await supabase.rpc('search_courses', params: {
      'p_student_id': studentId,
      'p_search_text': searchText,
      'p_first_year': isFirstYear ?? false,
      'p_second_year': isSecondYear ?? false,
      'p_third_year': isThirdYear ?? false,
      'p_fourth_year': isFourthYear ?? false,
      'p_fifth_year': isFirstYear ?? false,
      'p_free': isFree ?? false,
      'p_paid': isPaid ?? false,
    });
    return CourseModel.fromJsonToModel(response);
  }
}
