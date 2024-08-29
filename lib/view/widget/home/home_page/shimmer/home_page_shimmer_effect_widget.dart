import 'package:elearnnig/view/widget/home/home_page/shimmer/search_field_shimmer_widget.dart';
import 'package:elearnnig/view/widget/home/home_page/shimmer/trending_shimmer_widget.dart';
import 'package:flutter/material.dart';

import 'app_bar_shimmer_widget.dart';
import 'continue_course_shimmer_widget.dart';

class HomePageShimmerEffectWidget extends StatelessWidget {
  const HomePageShimmerEffectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: const [
          SizedBox(height: 40),
          AppBarShimmerWidget(),
          SizedBox(height: 40),
          SearchFieldShimmerWidget(),
          SizedBox(height: 40),
          ContinueCourseShimmerWidget(),
          SizedBox(height: 20),
          TrendingShimmerWidget(),
        ],
      ),
    );
  }
}
