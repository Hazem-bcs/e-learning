import 'package:elearnnig/view/widget/home/home_page/shimmer/trending_card_shimmer_widget.dart';
import 'package:flutter/material.dart';

class TrendingShimmerWidget extends StatelessWidget {
  const TrendingShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 340,
      child: Column(
        children: [
          SizedBox(height: 35),
          TrendingCardShimmerWidget(),
        ],
      ),
    );
  }
}
