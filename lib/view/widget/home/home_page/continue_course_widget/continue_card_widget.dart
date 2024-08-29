import 'package:flutter/material.dart';
import '../../../../../data/model/course_model.dart';
import 'continue_course_circle_widget.dart';
import 'continue_course_coulmn_widge.dart';
import 'continue_course_image_widget.dart';

class ContinueCardWidget extends StatelessWidget {
  const ContinueCardWidget({
    super.key,
    required this.myCourse,
  });

  final CourseModel myCourse;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFDFD),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            ContinueCourseImageWidget(image: myCourse.image),
            const SizedBox(width: 25),
            ContinueCourseColumnWidget(myCourse: myCourse),
            const SizedBox(width: 30),
            const ContinueCourseCircleWidget()
          ],
        ),
      ),
    );
  }
}
