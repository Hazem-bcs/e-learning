import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          firstText,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Center(
          child: Text(
            secondText,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        )
      ],
    );
  }
}
