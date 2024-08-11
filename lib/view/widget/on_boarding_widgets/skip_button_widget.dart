import 'package:elearnnig/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    OnboardingControllerImp controllerImp = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.primary)),
              onPressed: onPressed,
              child: Text(
                "Skip",
                style: Theme.of(context).textTheme.labelMedium,
              )),
        )
      ],
    );
  }
}
