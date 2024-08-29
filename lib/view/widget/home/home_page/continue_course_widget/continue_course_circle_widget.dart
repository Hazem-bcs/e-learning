import 'package:flutter/material.dart';

class ContinueCourseCircleWidget extends StatelessWidget {
  const ContinueCourseCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 14,
      maxRadius: 14,
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
      child: const Icon(Icons.arrow_upward_rounded),
    );
  }
}
