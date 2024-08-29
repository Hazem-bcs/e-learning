import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/home/home_page_controller.dart';
import '../../../../../core/constent/images.dart';
import 'icon_button_widget.dart';
import 'circle_profile_widget.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleProfileWidget(
              image: controllerImp.student[0].image,
              onTap: () => controllerImp.profileIcon(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Hello, ${controllerImp.student[0].name ?? 'User'}!👋🏻',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButtonWidget(
              image: ImageRoutes.settingIcon,
              onTap: () => controllerImp.settingIcon(),
            ),
            IconButtonWidget(
              image: ImageRoutes.bellIcon,
              onTap: () => controllerImp.bellIcon(),
            )
          ],
        )
      ],
    );
  }
}
