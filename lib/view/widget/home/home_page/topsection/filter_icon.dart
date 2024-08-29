import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/home/home_page_controller.dart';
import '../../../../../core/constent/images.dart';
import '../../../../../core/ui_components/info_widget.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = Get.find();
    return InkWell(
      onTap: () => controllerImp.filterIcon(),
      child: InfoWidget(
        builder: (context, deviceInfo) => SizedBox(
          width: deviceInfo.screenWidth * 0.12,
          child: Container(
            padding: const EdgeInsets.all(5),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Image.asset(
              width: 21,
              height: 21,
              ImageRoutes.filterIcon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
