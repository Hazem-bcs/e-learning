import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../model/search/record_search_model.dart';

class GetSearchRecordData {
  final supabase = Supabase.instance.client;

  Future<List<SearchDataModel>> getSearchRecordData(int studentId) async {
    final response = await supabase
        .rpc('get_record_search_data', params: {'p_student_id': studentId});
    return SearchDataModel.fromJsonToModel(response);
  }

  Future<List<SearchDataModel>> getTopSearchData() async {
    final response = await supabase.rpc('get_top_three_searches');
    return SearchDataModel.fromJsonToModel(response);
  }
}
