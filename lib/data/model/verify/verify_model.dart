import '../../../core/enums/handle_error/verify_code/verify_code.dart';
import '../../../core/function/handle_error/parse_error/verify_code/verify_code_parse.dart';

class VerifyModel {
  VerificationStatus verificationStatus;
  int studentId;

  VerifyModel({required this.verificationStatus, required this.studentId});

  void fromJsonToModel(var response) {
    verificationStatus = parseVerificationStatus(response[0]['result']);
    studentId = response[0]['student_id'];
  }
}
