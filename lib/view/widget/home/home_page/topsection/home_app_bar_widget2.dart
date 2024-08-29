import 'package:elearnnig/controller/home/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/constent/images.dart';
import 'circle_profile_widget.dart';
import 'icon_button_widget.dart';

class HomeAppBarWidget2 extends StatelessWidget {
  const HomeAppBarWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = Get.find();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AppBar(
        leading: CircleProfileWidget(
          image: controllerImp.student[0].image,
          onTap: () => controllerImp.profileIcon(),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'Hello, ${controllerImp.student[0].name ?? 'User'}!👋🏻',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        actions: [
          IconButtonWidget(
            image: ImageRoutes.settingIcon,
            onTap: () => controllerImp.settingIcon(),
          ),
          IconButtonWidget(
            image: ImageRoutes.bellIcon,
            onTap: () => controllerImp.bellIcon(),
          )
        ],
      ),
    );
  }
}
