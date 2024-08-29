import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/home/home_page_controller.dart';
import '../../../../../core/enums/view_all_type.dart';
import '../view_all_widget.dart';
import 'continue_card_widget.dart';

class ContinueCourseSectionWidget extends StatelessWidget {
  const ContinueCourseSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = Get.find();
    return controllerImp.myCourseList.isNotEmpty
        ? Column(
            children: [
              const TextViewAllWidget(
                text: 'Continue Learning',
                viewAllType: ViewAllType.continueCourse,
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 255,
                child: ListView.separated(
                  itemCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemBuilder: (BuildContext context, int index) {
                    var myCourse = controllerImp.myCourseList[index];
                    return ContinueCardWidget(myCourse: myCourse);
                  },
                ),
              )
            ],
          )
        : const SizedBox();
  }
}
