import 'package:flutter/material.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.width,
      required this.textColor,
      this.onPressed,
      this.image,
      this.showImage = false});

  final String text;
  final Color color;
  final Color textColor;
  final double width;
  final void Function()? onPressed;
  final String? image;
  final bool showImage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(color),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
                side: BorderSide(color: Colors.grey.withOpacity(0.5))),
          ),
          minimumSize: WidgetStatePropertyAll(Size(width, 54))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showImage) ...[
            Image.asset(
              image!,
              width: 30,
              height: 30,
            ),
          ],
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}
