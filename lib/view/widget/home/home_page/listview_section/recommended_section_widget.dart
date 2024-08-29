import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/home/home_page_controller.dart';
import '../../../../../core/enums/view_all_type.dart';
import '../view_all_widget.dart';
import 'list_view_course_widget.dart';

class RecommendedSectionWidget extends StatelessWidget {
  const RecommendedSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = Get.find();
    return controllerImp.recommendedCourseList.isNotEmpty
        ? SizedBox(
            height: 340,
            child: Column(
              children: [
                const TextViewAllWidget(
                    viewAllType: ViewAllType.recommendedCourse,
                    text: 'Recommended Courses'),
                const SizedBox(height: 15),
                ListViewCourseWidget(
                  courseList: controllerImp.recommendedCourseList,
                ),
              ],
            ),
          )
        : const SizedBox();
  }
}
