import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/ui_components/info_widget.dart';

class SearchFieldShimmerWidget extends StatelessWidget {
  const SearchFieldShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) => Row(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white10,
            child: Container(
              color: Colors.grey.withOpacity(0.5),
              height: 40,
              width: deviceInfo.screenWidth * 0.75,
            ),
          ),
          const SizedBox(width: 10),
          Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white10,
            child: SizedBox(
              width: deviceInfo.screenWidth * 0.12,
              child: Container(
                padding: const EdgeInsets.all(5),
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
