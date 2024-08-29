import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/ui_components/info_widget.dart';

class TrendingSectionShimmerWidget extends StatelessWidget {
  const TrendingSectionShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InfoWidget(
                builder: (context, deviceInfo) => Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white10,
                  child: Container(
                    width: deviceInfo.screenWidth * 0.27,
                    height: 7,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.white10,
                child: const CircleAvatar(
                  maxRadius: 13,
                  minRadius: 13,
                ),
              ),
            ],
          ),
          InfoWidget(
            builder: (context, deviceInfo) => Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.white10,
              child: SizedBox(
                width: deviceInfo.screenWidth * 0.27,
                height: 7,
                child: Container(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.white10,
                child: Container(
                  color: Colors.grey.withOpacity(0.5),
                  width: 10,
                  height: 7,
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.white10,
                child: Container(
                  color: Colors.grey.withOpacity(0.5),
                  width: 29,
                  height: 7,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
