import 'package:elearnnig/controller/home/home_controller.dart';
import 'package:elearnnig/view/screen/home/categories_screen.dart';
import 'package:elearnnig/view/screen/home/chat_screen.dart';
import 'package:elearnnig/view/screen/home/favorite_screen.dart';
import 'package:elearnnig/view/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/home/home_page/bottom/my_bottom_navigation_bar_widget.dart';
import 'home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeControllerImp controllerImp = Get.put(HomeControllerImp());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              controllerImp.onPageChange(index);
            },
            controller: controllerImp.pageController,
            children: const [
              HomePage(),
              CategoriesScreen(),
              FavoriteScreen(),
              ChatScreen(),
              ProfileScreen()
            ],
          ),
          const MyBottomNavigationBarWidget(),
        ],
      ),
    );
  }
}
