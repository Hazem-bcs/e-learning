import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'continue_course_column_shimmer_widget.dart';
import 'continue_course_image_shimmer_widget.dart';

class ContinueCardShimmerWidget extends StatelessWidget {
  const ContinueCardShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            const ContinueCourseImageShimmerWidget(),
            const SizedBox(width: 25),
            const ContinueCourseColumnShimmerWidget(),
            const SizedBox(width: 30),
            Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.white10,
              child: const CircleAvatar(
                minRadius: 14,
                maxRadius: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
