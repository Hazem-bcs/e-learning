import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/function/get_image_from_drive.dart';
import '../../../../../data/model/course_model.dart';

class TrendingCourseImageWidget extends StatelessWidget {
  const TrendingCourseImageWidget({
    super.key,
    required this.course,
  });

  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CachedNetworkImage(
        imageUrl: getImageFromDrive(
          course.image!,
        ),
        fit: BoxFit.cover,
        height: 135,
      ),
    );
  }
}
