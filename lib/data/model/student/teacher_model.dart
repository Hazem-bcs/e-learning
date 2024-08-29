import 'package:flutter/material.dart';

class TeacherModel {
  final int? studentId;
  final String? name;
  final String? image;
  final String? carer;
  final Color? color;
  final double? topLeft;
  final double? topRight;
  final double? bottomLeft;
  final double? bottomRight;

  TeacherModel({
    this.carer,
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
    this.color,
    this.studentId,
    this.name,
    this.image,
  });

  static List<TeacherModel> fromJsonToModel(List<dynamic> response) {
    List<TeacherModel> list = [];
    for (int i = 0; i < response.length; i++) {
      final item = TeacherModel(
        studentId: response[i]['student_id'],
        name: response[i]['name'],
        image: response[i]['image'],
        carer: i == 3 ? 'Editor' : 'Teacher',
        color: i == 0
            ? Colors.yellow
            : i == 1
                ? Colors.red
                : i == 2
                    ? Colors.green
                    : Colors.blue,
        topLeft: i == 0
            ? 100
            : i == 1
                ? 100
                : i == 2
                    ? 100
                    : 5,
        topRight: i == 0
            ? 5
            : i == 1
                ? 100
                : i == 2
                    ? 100
                    : 100,
        bottomLeft: 5,
        bottomRight: i == 0
            ? 5
            : i == 1
                ? 100
                : i == 2
                    ? 100
                    : 5,
      );
      list.add(item);
    }
    return list;
  }
}
