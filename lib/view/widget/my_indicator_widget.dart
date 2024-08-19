import 'package:flutter/material.dart';

class MyIndicatorWidget extends StatelessWidget {
  const MyIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(0.3),
      child: const Center(
        child: CircularProgressIndicator(
          strokeAlign: 3,
          strokeWidth: 5,
        ),
      ),
    );
  }
}
