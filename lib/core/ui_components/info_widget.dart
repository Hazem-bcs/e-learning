import 'package:flutter/material.dart';

import '../../data/model/device_info.dart';
import '../function/device_type.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.builder});

  final Widget Function(BuildContext context, DeviceInfo deviceInfo) builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mediaQueryData = MediaQuery.of(context);
        var deviceInfo = DeviceInfo(
            orientation: mediaQueryData.orientation,
            deviceType: getDeviceType(mediaQueryData),
            localHeight: constraints.maxHeight,
            localWidth: constraints.maxWidth,
            screenHeight: mediaQueryData.size.height,
            screenWidth: mediaQueryData.size.width);
        return builder(context, deviceInfo);
      },
    );
  }
}
