import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 280,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ));
  }
}
