import 'package:flutter/material.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({
    super.key,
    required this.text,
    required this.color,
    required this.width,
    required this.textColor,
    this.onPressed,
  });

  final String text;
  final Color color;
  final Color textColor;
  final double width;
  final void Function()? onPressed;

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
                side: BorderSide(color: textColor)),
          ),
          minimumSize: WidgetStatePropertyAll(Size(width, 54))),
      child: Text(
        text,
        style:
            Theme.of(context).textTheme.labelMedium?.copyWith(color: textColor),
      ),
    );
  }
}
