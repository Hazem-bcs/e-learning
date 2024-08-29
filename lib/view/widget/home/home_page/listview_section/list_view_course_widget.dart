import 'package:elearnnig/view/widget/home/home_page/listview_section/trending_course_image_widget.dart';
import 'package:elearnnig/view/widget/home/home_page/listview_section/trending_course_text_section_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../data/model/course_model.dart';

class ListViewCourseWidget extends StatelessWidget {
  const ListViewCourseWidget({
    super.key,
    required this.courseList,
  });

  final List<CourseModel> courseList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemCount: courseList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var course = courseList[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                width: 170,
                padding: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    TrendingCourseImageWidget(course: course),
                    const SizedBox(height: 5),
                    TrendingCourseTextSectionWidget(course: course),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
