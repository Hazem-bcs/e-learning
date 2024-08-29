import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/home/home_page_controller.dart';
import '../../../../../core/enums/view_all_type.dart';
import '../view_all_widget.dart';
import 'list_view_course_widget.dart';

class TrendingAndNewSectionWidget extends StatelessWidget {
  const TrendingAndNewSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = Get.find();
    return controllerImp.trendingCourseList.isNotEmpty
        ? SizedBox(
            height: 340,
            child: Column(
              children: [
                const TextViewAllWidget(
                    viewAllType: ViewAllType.trendingCourse,
                    text: 'New & Trending Courses'),
                const SizedBox(height: 15),
                ListViewCourseWidget(
                  courseList: controllerImp.trendingCourseList,
                ),
              ],
            ),
          )
        : const SizedBox();
  }
}
