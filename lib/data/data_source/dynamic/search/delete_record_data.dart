import 'package:supabase_flutter/supabase_flutter.dart';

class DeleteSearchRecordData {
  final supabase = Supabase.instance.client;

  Future<void> deleteSearchRecord(String text) async {
    await supabase.rpc('delete_search_record',
        params: {'p_search_text': text, 'p_student_id': 16});
  }
}
