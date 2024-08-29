import 'package:elearnnig/view/widget/home/home_page/continue_course_widget/person_and_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../data/model/course_model.dart';

class ContinueCourseColumnWidget extends StatelessWidget {
  const ContinueCourseColumnWidget({
    super.key,
    required this.myCourse,
  });

  final CourseModel myCourse;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            myCourse.name!,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black, fontSize: 17),
          ),
          PersonAndTextWidget(
              image: myCourse.instructorImage!, name: myCourse.instructorName!),
          Row(
            children: [
              Text(
                myCourse.courseTime!,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                '  Hour full time',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
