import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/home/home_page_controller.dart';
import '../../../../../core/constent/images.dart';
import '../../../../../core/ui_components/info_widget.dart';
import '../../../../../data/model/course_model.dart';

class TrendingCourseTextSectionWidget extends StatelessWidget {
  const TrendingCourseTextSectionWidget({
    super.key,
    required this.course,
  });

  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = Get.find();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InfoWidget(
                builder: (context, deviceInfo) => SizedBox(
                  width: deviceInfo.screenWidth * 0.27,
                  child: Text(
                    course.name!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => controllerImp.addToBookMarks(course),
                child: Obx(
                  () => Image.asset(
                    course.isFavorite!.value
                        ? ImageRoutes.bookMarksFill
                        : ImageRoutes.bookMarksIcon,
                    width: 25,
                    height: 29,
                    color:
                        course.isFavorite!.value ? Colors.yellow : Colors.black,
                  ),
                ),
              ),
            ],
          ),
          InfoWidget(
            builder: (context, deviceInfo) => SizedBox(
              width: deviceInfo.screenWidth * 0.27,
              child: Text(
                course.description!,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('⭐ ${course.rate?.toStringAsFixed(1)}'),
              Text(
                course.price == 0
                    ? 'Free'
                    : '\$${course.price?.toStringAsFixed(1)}',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}
