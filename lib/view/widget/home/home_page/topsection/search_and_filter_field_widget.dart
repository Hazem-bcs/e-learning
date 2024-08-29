import 'package:elearnnig/controller/search/search_controller.dart';
import 'package:elearnnig/core/ui_components/info_widget.dart';
import 'package:elearnnig/view/widget/home/home_page/topsection/search_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'filter_icon.dart';

class SearchAndFilterFieldWidget extends StatelessWidget {
  const SearchAndFilterFieldWidget({
    super.key,
    this.isHomePage = false,
  });
  final bool? isHomePage;

  @override
  Widget build(BuildContext context) {
    final SearchControllerImp controllerImp = Get.find();
    return Row(
      children: [
        Stack(
          children: [
            SearchFieldWidget(
              isHomePage: isHomePage,
            ),
            if (isHomePage ?? false) ...[
              GestureDetector(
                onTap: () => controllerImp.onSearchFieldTap(),
                child: InfoWidget(
                  builder: (context, deviceInfo) => Container(
                    width: deviceInfo.screenWidth * 0.75,
                    height: 60,
                    color: Colors.red.withOpacity(0),
                  ),
                ),
              )
            ],
          ],
        ),
        const SizedBox(width: 10),
        const FilterIcon(),
      ],
    );
  }
}
