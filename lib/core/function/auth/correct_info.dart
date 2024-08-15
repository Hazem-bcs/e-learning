import 'package:flutter/material.dart';

import '../../../view/widget/auth/titlewidget.dart';

Column buildCorrectInfo(
    {required bool isNotWho,
    required String falseText,
    required String trueText1,
    required String trueText2}) {
  if (isNotWho) {
    return Column(
      children: [
        const Center(
          child: TitleWidget(
            text: "Oops!",
          ),
        ),
        const SizedBox(height: 15),
        Center(
          child: TitleWidget(
            text: falseText,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.red,
                letterSpacing: 2),
          ),
        ),
      ],
    );
  } else {
    return Column(
      children: [
        Center(
          child: TitleWidget(
            text: trueText1,
          ),
        ),
        const SizedBox(height: 15),
        Center(
          child: TitleWidget(
            text: trueText2,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black54,
                letterSpacing: 2),
          ),
        ),
      ],
    );
  }
}
