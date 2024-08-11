import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    super.key,
    required this.counter,
  });
  final int counter;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFE0E0E0),
      ),
      child: Stack(
        children: [
          AnimatedContainer(
            width: 150 / 4,
            margin: EdgeInsets.only(left: 150 / 4 * counter),
            duration: const Duration(milliseconds: 400),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }
}
