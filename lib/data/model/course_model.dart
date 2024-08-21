class CourseModel {
  int? courseId;
  String? createAt;
  int? yearId;
  int? instructorId;
  double? rate;
  String? name;
  String? description;
  String? image;
  String? courseTime;
  int? price;
  String? instructorName;
  String? instructorImage;
  bool? isFavorite;

  CourseModel(
      {this.courseId,
      this.createAt,
      this.yearId,
      this.description,
      this.image,
      this.courseTime,
      this.rate,
      this.name,
      this.price,
      this.instructorId,
      this.instructorName,
      this.instructorImage,
      this.isFavorite});

  static List<CourseModel> fromJsonToModel(List<dynamic> response) {
    List<CourseModel> list = [];
    for (int i = 0; i < response.length; i++) {
      final item = CourseModel(
        courseId: response[i]['course_id'],
        createAt: response[i]['create_at'],
        yearId: response[i]['year_id'],
        description: response[i]['description'],
        image: response[i]['image'],
        courseTime: response[i]['course_time'],
        name: response[i]['name'],
        rate: response[i]['rate'],
        price: response[i]['price'],
        instructorId: response[i]['instructor_id'],
        instructorName: response[i]['instructor_name'],
        instructorImage: response[i]['instructor_image'],
        isFavorite: response[i]['is_favorite'],
      );
      list.add(item);
    }
    return list;
  }
}
