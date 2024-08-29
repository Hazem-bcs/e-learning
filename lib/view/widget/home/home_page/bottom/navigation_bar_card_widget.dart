import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/home/home_controller.dart';

class NavigationCardWidget extends StatelessWidget {
  const NavigationCardWidget(
      {super.key,
      required this.index,
      required this.image,
      required this.text});

  final int index;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final HomeControllerImp controllerImp = Get.find();
    return GetBuilder<HomeControllerImp>(builder: (controller) {
      int selected = controllerImp.selectedScreen;
      return InkWell(
        onTap: () => controllerImp.onTapNavigationBar(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          padding: EdgeInsets.symmetric(
            horizontal: selected == index ? 20 : 0,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: selected == index
                ? Theme.of(context).colorScheme.primary.withOpacity(0.3)
                : null,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image.asset(
                image,
                color: selected == index
                    ? Theme.of(context).colorScheme.primary
                    : Colors.black,
              ),
              const SizedBox(width: 10),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: selected == index ? 50 : 0,
                child: selected == index
                    ? Text(
                        text,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      )
                    : null,
              ),
            ],
          ),
        ),
      );
    });
  }
}
