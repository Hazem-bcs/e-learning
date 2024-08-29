import 'package:elearnnig/controller/search/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/search/custom_check_box_widget.dart';
import '../../widget/search/search_text_widget.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchControllerImp controllerImp = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0),
          child: Text('Filter'),
        ),
        actions: [
          TextButton(
            onPressed: () => controllerImp.clear(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Text(
                'clear',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchTextWidget(text: 'Price:'),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: GetBuilder<SearchControllerImp>(
                    builder: (controller) => Column(
                      children: [
                        CustomCheckBoxWidget(
                          text: 'Free',
                          value: controllerImp.isFree,
                          onChanged: (value) {
                            controllerImp.isFree = value!;
                          },
                        ),
                        CustomCheckBoxWidget(
                          text: 'Paid',
                          value: controllerImp.isPaid,
                          onChanged: (value) {
                            controllerImp.isPaid = value!;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SearchTextWidget(text: 'Levels:'),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: GetBuilder<SearchControllerImp>(
                    builder: (controller) => Column(
                      children: [
                        CustomCheckBoxWidget(
                          text: 'First Year',
                          value: controllerImp.isYearOne,
                          onChanged: (value) {
                            controllerImp.isYearOne = value!;
                          },
                        ),
                        CustomCheckBoxWidget(
                          text: 'Second Year',
                          value: controllerImp.isYearTow,
                          onChanged: (value) {
                            controllerImp.isYearTow = value!;
                          },
                        ),
                        CustomCheckBoxWidget(
                          text: 'Third Year',
                          value: controllerImp.isYearThree,
                          onChanged: (value) {
                            controllerImp.isYearThree = value!;
                          },
                        ),
                        CustomCheckBoxWidget(
                          text: 'Fourth Year',
                          value: controllerImp.isYearFour,
                          onChanged: (value) {
                            controllerImp.isYearFour = value!;
                          },
                        ),
                        CustomCheckBoxWidget(
                          text: 'Fifth Year',
                          value: controllerImp.isYearFive,
                          onChanged: (value) {
                            controllerImp.isYearFive = value!;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
