import 'package:elearnnig/controller/home/home_page_controller.dart';
import 'package:elearnnig/controller/search/search_controller.dart';
import 'package:elearnnig/core/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/home/home_page/continue_course_widget/continue_course_section_widget.dart';
import '../../widget/home/home_page/listview_section/recommended_section_widget.dart';
import '../../widget/home/home_page/listview_section/trending_and_new_section_widget.dart';
import '../../widget/home/home_page/review/customer_review_section.dart';
import '../../widget/home/home_page/shimmer/home_page_shimmer_effect_widget.dart';
import '../../widget/home/home_page/top_teacher/top_teacher_section_widget.dart';
import '../../widget/home/home_page/topsection/home_app_bar_widget.dart';
import '../../widget/home/home_page/topsection/search_and_filter_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageControllerImp controllerImp = Get.put(HomePageControllerImp());
    return InfoWidget(
      builder: (context, deviceInfo) => Scaffold(
        body: Obx(
          () {
            if (controllerImp.isLoading.value == true) {
              return const HomePageShimmerEffectWidget();
            } else {
              // define here to get data after HomeController is finished
              Get.put(SearchControllerImp());
              return SafeArea(
                child: Container(
                  height: deviceInfo.screenHeight,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    children: const [
                      SizedBox(height: 25),
                      HomeAppBarWidget(),
                      SizedBox(height: 25),
                      SearchAndFilterFieldWidget(
                        isHomePage: true,
                      ),
                      SizedBox(height: 20),
                      ContinueCourseSectionWidget(),
                      TrendingAndNewSectionWidget(),
                      RecommendedSectionWidget(),
                      SizedBox(height: 20),
                      TopTeacherSectionWidget(),
                      CustomerReviewsSection(),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
