import 'package:elearnnig/core/ui_components/info_widget.dart';
import 'package:flutter/material.dart';

class MyIndicatorWidget extends StatelessWidget {
  const MyIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) => Container(
        width: deviceInfo.screenWidth,
        height: deviceInfo.screenHeight,
        color: Colors.white.withOpacity(0.7),
        child: const Center(
          child: CircularProgressIndicator(
            strokeAlign: 3,
            strokeWidth: 5,
          ),
        ),
      ),
    );
  }
}
