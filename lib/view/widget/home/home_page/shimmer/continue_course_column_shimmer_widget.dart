import 'package:elearnnig/view/widget/home/home_page/shimmer/person_and_text_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ContinueCourseColumnShimmerWidget extends StatelessWidget {
  const ContinueCourseColumnShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white10,
            child: Container(
              color: Colors.grey.withOpacity(0.5),
              height: 10,
              width: 30,
            ),
          ),
          const PersonAndTextShimmerWidget(),
          Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white10,
            child: Container(
              color: Colors.grey.withOpacity(0.5),
              width: 40,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }
}
