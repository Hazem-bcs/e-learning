import 'package:flutter/material.dart';

class CustomCheckBoxWidget extends StatelessWidget {
  const CustomCheckBoxWidget({
    super.key,
    this.value,
    this.onChanged,
    required this.text,
  });

  final bool? value;
  final void Function(bool?)? onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CheckboxMenuButton(
      value: value,
      onChanged: onChanged,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
