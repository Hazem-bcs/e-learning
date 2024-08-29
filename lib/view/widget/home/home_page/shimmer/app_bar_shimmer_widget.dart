import 'package:elearnnig/core/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppBarShimmerWidget extends StatelessWidget {
  const AppBarShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white10,
                  child: const CircleAvatar(
                    minRadius: 20,
                    maxRadius: 20,
                  )),
              const SizedBox(width: 30),
              Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white10,
                  child: Container(
                    color: Colors.grey.withOpacity(0.5),
                    width: deviceInfo.screenWidth * 0.5,
                    height: 15,
                  )),
            ],
          ),
          Row(
            children: [
              Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white10,
                  child: const CircleAvatar(
                    minRadius: 15,
                    maxRadius: 15,
                  )),
              Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white10,
                  child: const CircleAvatar(
                    minRadius: 15,
                    maxRadius: 15,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
