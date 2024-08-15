import 'package:flutter/material.dart';

class AlreadyWidget extends StatelessWidget {
  const AlreadyWidget({
    super.key,
    required this.text,
    required this.text2,
    this.onPressed,
  });
  final String text;
  final String text2;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(text),
      TextButton(
        onPressed: onPressed,
        child: Text(text2),
      )
    ]);
  }
}
