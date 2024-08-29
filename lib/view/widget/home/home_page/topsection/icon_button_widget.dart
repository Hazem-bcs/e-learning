import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    this.onTap,
    required this.image,
  });

  final void Function()? onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: InkWell(
        onTap: onTap,
        child: Image.asset(
          image,
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
