import 'package:elearnnig/view/widget/search/search_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/search/search_controller.dart';
import '../../../core/constent/images.dart';
import '../../../core/theme/app_color.dart';

class RecentAndTopSearchWidget extends StatelessWidget {
  const RecentAndTopSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchControllerImp controllerImp = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextWidget(text: 'Recent Searches'),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 5,
            color: AppColor.greyColor.withOpacity(0.2),
          ),
        ),
        const SizedBox(height: 10),
        GetBuilder<SearchControllerImp>(
          builder: (controller) => Column(
            children: [
              for (int i = 0;
                  i < controllerImp.recordSearchList.length;
                  i++) ...[
                ListTile(
                  onTap: () => controllerImp
                      .onTextTap(controllerImp.recordSearchList[i].text),
                  leading: Image.asset(
                    controllerImp.recordSearchList.length % 2 == 1
                        ? ImageRoutes.timeIcon
                        : ImageRoutes.time2Icon,
                    width: 24,
                    height: 24,
                    color: AppColor.greyColor,
                  ),
                  title: Text(
                    controllerImp.recordSearchList[i].text,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 20),
                  ),
                  trailing: IconButton(
                    onPressed: () => controllerImp.deleteRecord(
                        controllerImp.recordSearchList[i].text, i),
                    icon: Icon(
                      Icons.close,
                      color: AppColor.primaryColor,
                    ),
                  ),
                )
              ],
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 5,
            color: AppColor.greyColor.withOpacity(0.2),
          ),
        ),
        const SizedBox(height: 20),
        const SearchTextWidget(text: 'Top Searches'),
        const SizedBox(height: 20),
        for (int i = 0; i < controllerImp.topSearchList.length; i++) ...[
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: InkResponse(
              onTap: () =>
                  controllerImp.onTextTap(controllerImp.topSearchList[i].text),
              borderRadius: BorderRadius.circular(25),
              containedInkWell: true,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColor.greyColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(controllerImp.topSearchList[i].text),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ]
      ],
    );
  }
}
