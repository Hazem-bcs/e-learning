import 'package:flutter/material.dart';

import '../topsection/circle_profile_widget.dart';

class PersonAndTextWidget extends StatelessWidget {
  const PersonAndTextWidget({
    super.key,
    required this.image,
    required this.name,
    this.width,
    this.height,
  });

  final String image;
  final String name;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleProfileWidget(
          width: width ?? 14,
          height: height ?? 14,
          image: image,
        ),
        const SizedBox(width: 10),
        Text(
          name,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
