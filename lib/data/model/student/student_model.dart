class StudentModel {
  int? studentId;
  String? createAt;
  String? name;
  String? email;
  String? phone;
  String? image;
  double? balance;
  bool? isPrivate;
  bool? isInstructor;

  StudentModel({
    this.studentId,
    this.createAt,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.balance,
    this.isPrivate,
    this.isInstructor,
  });
  static List<StudentModel> fromJsonToModel(List<dynamic> response) {
    List<StudentModel> list = [];
    for (int i = 0; i < response.length; i++) {
      final item = StudentModel(
        studentId: response[i]['student_id'],
        createAt: response[i]['create_at'],
        name: response[i]['name'],
        email: response[i]['email'],
        phone: response[i]['phone'],
        image: response[i]['image'],
        balance: response[i]['balance'],
        isPrivate: response[i]['is_private'],
        isInstructor: response[i]['is_instructor'],
      );
      list.add(item);
    }
    return list;
  }
}
