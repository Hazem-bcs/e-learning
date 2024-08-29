import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ContinueCourseImageShimmerWidget extends StatelessWidget {
  const ContinueCourseImageShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.hardEdge,
        child: Container(
          color: Colors.grey.withOpacity(0.5),
          width: 150,
          height: 110,
        ),
      ),
    );
  }
}
