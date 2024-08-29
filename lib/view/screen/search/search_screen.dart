import 'package:elearnnig/view/widget/home/home_page/topsection/search_and_filter_field_widget.dart';
import 'package:elearnnig/view/widget/search/recent_and_top_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/search/search_controller.dart';
import '../../widget/home/home_page/continue_course_widget/continue_card_widget.dart';
import '../../widget/my_indicator_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchControllerImp controllerImp = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const SearchAndFilterFieldWidget(),
            const SizedBox(height: 40),
            Obx(
              () => controllerImp.isLoading.value
                  ? const MyIndicatorWidget()
                  : const BottomSectionWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class BottomSectionWidget extends StatelessWidget {
  const BottomSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SearchControllerImp controllerImp = Get.find();
    return Obx(
      () => controllerImp.showRecentSearch.value
          ? const RecentAndTopSearchWidget()
          : Column(
              children: [
                for (int index = 0;
                    index < controllerImp.searchCourseList.length;
                    index++) ...[
                  ContinueCardWidget(
                    myCourse: controllerImp.searchCourseList[index],
                  ),
                  const SizedBox(height: 15),
                ]
              ],
            ),
    );
  }
}
