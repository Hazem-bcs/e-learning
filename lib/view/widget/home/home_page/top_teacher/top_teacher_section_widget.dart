import 'package:elearnnig/controller/home/home_page_controller.dart';
import 'package:elearnnig/data/model/student/teacher_model.dart';
import 'package:elearnnig/view/widget/home/home_page/top_teacher/shape_behind_teacher_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'column_text_teacher_widget.dart';

class TopTeacherSectionWidget extends StatelessWidget {
  const TopTeacherSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = Get.find();
    List<TeacherModel> instructorList = controllerImp.instructorList;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Experience &\n Professional Mentor',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 500,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                mainAxisExtent: 240),
            itemCount: 4,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShapeBehindTeacherWidget(
                  instructorList: instructorList,
                  index: index,
                ),
                const SizedBox(height: 8),
                ColumnTextTeacherWidget(
                  instructorList: instructorList,
                  index: index,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
