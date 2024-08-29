import 'package:elearnnig/controller/home/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomerReviewsSection extends StatelessWidget {
  const CustomerReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = Get.find();
    return controllerImp.feedbackList.isNotEmpty
        ? SizedBox(
            height: 300,
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: controllerImp.feedbackList.length,
              options: CarouselOptions(
                animateToClosest: true,
                autoPlay: true,
                viewportFraction: 1,
              ),
              itemBuilder: (context, index, realIndex) => Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Most Satisfied \nCustomer Says About Us ',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${controllerImp.feedbackList[index].studentName}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.blueGrey[700],
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '“${controllerImp.feedbackList[index].message}”',
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.blueGrey[700],
                            fontStyle: FontStyle.italic,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '“🌹🌹🌹”',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.blueGrey[700],
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}
