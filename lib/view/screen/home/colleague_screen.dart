import 'package:elearnnig/controller/home/colleague_controller.dart';
import 'package:elearnnig/view/widget/home/colleague_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shimmer/shimmer.dart';

class ColleagueScreen extends StatelessWidget {
  const ColleagueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColleagueControllerImp controllerImp =
        Get.put(ColleagueControllerImp());
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GetBuilder<ColleagueControllerImp>(
            builder: (controller) => controllerImp.isLoading
                ? CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 40),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 10),
                      ),
                      SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => Shimmer.fromColors(
                            baseColor: Colors.grey,
                            highlightColor: Colors.white10,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey),
                            ),
                          ),
                          childCount: 5,
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisExtent: 250,
                                mainAxisSpacing: 5),
                      ),
                    ],
                  )
                : CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 40),
                      ),
                      SliverToBoxAdapter(
                        child: Text(
                          'Select your Colleague',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 10),
                      ),
                      SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => ColleagueCardWidget(index: index),
                          childCount: controllerImp.listColleagueModel.length,
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisExtent: 250,
                                mainAxisSpacing: 5),
                      ),
                    ],
                  ),
          )),
    );
  }
}
