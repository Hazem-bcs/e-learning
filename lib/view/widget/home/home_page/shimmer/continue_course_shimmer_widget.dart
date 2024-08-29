import 'package:flutter/material.dart';
import 'continue_card_shimmer_widget.dart';

class ContinueCourseShimmerWidget extends StatelessWidget {
  const ContinueCourseShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        SizedBox(
          height: 255,
          child: ListView.separated(
            itemCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (BuildContext context, int index) {
              return const ContinueCardShimmerWidget();
            },
          ),
        )
      ],
    );
  }
}
