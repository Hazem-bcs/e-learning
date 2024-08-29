import 'package:elearnnig/data/model/home/colleague_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ColleagueData {
  final supabase = Supabase.instance.client;

  Future<List<ColleagueModel>> getListColleagueData() async {
    final response = await supabase.rpc("get_colleagues");
    return ColleagueModel.fromJsonToModel(response);
  }
}
