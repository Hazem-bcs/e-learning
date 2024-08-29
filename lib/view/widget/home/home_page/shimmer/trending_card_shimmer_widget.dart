import 'package:elearnnig/view/widget/home/home_page/shimmer/trending_image_shimmer_widget.dart';
import 'package:elearnnig/view/widget/home/home_page/shimmer/trending_section_shimmer_widget.dart';
import 'package:flutter/material.dart';

class TrendingCardShimmerWidget extends StatelessWidget {
  const TrendingCardShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                width: 170,
                padding: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Column(
                  children: [
                    TrendingImageShimmerWidget(),
                    SizedBox(height: 5),
                    TrendingSectionShimmerWidget(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
