class Student {
  String name;
  String password;
  String? email;
  String? phone;
  String? image = '';
  double? balance = 0.0;
  bool? isPrivate = false;
  bool? isInstructor = false;

  Student({
    required this.name,
    required this.password,
    this.email,
    this.phone,
    this.image,
    this.balance,
    this.isPrivate,
    this.isInstructor,
  });
}
