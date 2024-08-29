import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PersonAndTextShimmerWidget extends StatelessWidget {
  const PersonAndTextShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey,
          highlightColor: Colors.white10,
          child: const CircleAvatar(
            minRadius: 14,
            maxRadius: 14,
          ),
        ),
      ],
    );
  }
}
