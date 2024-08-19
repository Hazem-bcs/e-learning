import 'package:supabase_flutter/supabase_flutter.dart';

class TestConnection {
  final supabase = Supabase.instance.client;

  Future<void> fetchStudents() async {
    print("object");
    final response = await supabase.from('student').select('student_id');
    print(response);
  }
}
