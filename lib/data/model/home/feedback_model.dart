class FeedbackModel {
  String? studentName;
  String? message;
  String? createAt;

  FeedbackModel({this.studentName, this.createAt, this.message});
  static List<FeedbackModel> fromJsonToModel(List<dynamic> response) {
    return response.map((data) {
      return FeedbackModel(
        studentName: data['student_name'],
        message: data['message'],
        createAt: data['created_at'],
      );
    }).toList();
  }
}
