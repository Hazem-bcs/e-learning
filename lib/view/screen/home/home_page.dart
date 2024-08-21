import 'package:cached_network_image/cached_network_image.dart';
import 'package:elearnnig/controller/home/home_controller.dart';
import 'package:elearnnig/core/function/get_image_from_drive.dart';
import 'package:elearnnig/view/widget/my_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controllerImp = Get.put(HomeControllerImp());
    return Obx(
      () => Scaffold(
        body: controllerImp.isLoading.value
            ? const Center(
                child: MyIndicatorWidget(),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  children: [
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    getImageFromDrive(
                                        controllerImp.student[0].image!),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text('Hello, Sara!👋'),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: ,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
