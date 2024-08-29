import 'package:cached_network_image/cached_network_image.dart';
import 'package:elearnnig/core/constent/images.dart';
import 'package:flutter/material.dart';

import '../../../../../core/function/get_image_from_drive.dart';

class ContinueCourseImageWidget extends StatelessWidget {
  const ContinueCourseImageWidget({
    super.key,
    this.image,
  });

  final String? image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: 150,
        height: 110,
        child: image == null
            ? Image.asset(ImageRoutes.placeHolderImage)
            : CachedNetworkImage(
                imageUrl: getImageFromDrive(image!),
              ),
      ),
    );
  }
}
