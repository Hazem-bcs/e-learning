import 'package:flutter/material.dart';

class SearchTextWidget extends StatelessWidget {
  const SearchTextWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, color: Colors.black),
    );
  }
}
