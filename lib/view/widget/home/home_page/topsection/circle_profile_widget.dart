import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/images.dart';
import '../../../../../core/function/get_image_from_drive.dart';

class CircleProfileWidget extends StatelessWidget {
  const CircleProfileWidget({
    super.key,
    this.image,
    this.onTap,
    this.width,
    this.height,
  });

  final String? image;
  final void Function()? onTap;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.tealAccent.withOpacity(0.5),
        maxRadius: width ?? 20,
        minRadius: height ?? 20,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            image: image != null
                ? DecorationImage(
                    image: CachedNetworkImageProvider(
                      getImageFromDrive(image!),
                    ),
                    fit: BoxFit.contain,
                  )
                : null,
          ),
          child: image == null ? Image.asset(ImageRoutes.personIcon) : null,
        ),
      ),
    );
  }
}
