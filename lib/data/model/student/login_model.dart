class LoginModel {
  bool isSuccess;
  int studentId;

  LoginModel({required this.isSuccess, required this.studentId});

  void fromJsonToModel(var response) {
    isSuccess = response[0]['result'];
    studentId = response[0]['student_id'];
  }
}
