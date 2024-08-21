class LoginModel {
  bool isSuccess;
  int studentId;
  bool? rememberMe;

  LoginModel({required this.isSuccess, required this.studentId});

  void fromJsonToModel(var response, bool rememberMe) {
    isSuccess = response[0]['result'];
    studentId = response[0]['student_id'];
    this.rememberMe = rememberMe;
  }
}
