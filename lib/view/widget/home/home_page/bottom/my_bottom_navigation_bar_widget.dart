import 'package:elearnnig/core/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constent/images.dart';
import 'navigation_bar_card_widget.dart';

class MyBottomNavigationBarWidget extends StatelessWidget {
  const MyBottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: MediaQuery.of(context).size.width * 0.05,
      child: InfoWidget(
        builder: (context, deviceInfo) => Container(
          width: deviceInfo.screenWidth * 0.9,
          height: 60,
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: const Color(0xFFE0E0E0),
              borderRadius: BorderRadius.circular(40)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationCardWidget(
                index: 0,
                image: ImageRoutes.homeIcon,
                text: 'Home',
              ),
              NavigationCardWidget(
                index: 1,
                image: ImageRoutes.bookIcon,
                text: 'Home',
              ),
              NavigationCardWidget(
                index: 2,
                image: ImageRoutes.bookMarks2Icon,
                text: 'Home',
              ),
              NavigationCardWidget(
                index: 3,
                image: ImageRoutes.chatIcon,
                text: 'Home',
              ),
              NavigationCardWidget(
                index: 4,
                image: ImageRoutes.personIcon,
                text: 'Home',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
