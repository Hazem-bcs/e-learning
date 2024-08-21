import 'package:elearnnig/controller/onboarding_controller.dart';
import 'package:elearnnig/view/widget/on_boarding_widgets/skip_button_widget.dart';
import 'package:elearnnig/view/widget/on_boarding_widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/on_boarding_widgets/description_widget.dart';
import '../../widget/on_boarding_widgets/image_widget.dart';
import '../../widget/on_boarding_widgets/bottom_button_widget.dart';
import '../../widget/on_boarding_widgets/indicator_widget.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingControllerImp controllerImp =
        Get.put(OnboardingControllerImp());
    var list = controllerImp.listOnboardings;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: GetBuilder<OnboardingControllerImp>(
          builder: (controller) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 45,
              ),
              if (controllerImp.counter != list.length) ...[
                SkipButtonWidget(
                  onPressed: () => controller.skip(),
                )
              ],
              const SizedBox(
                height: 10,
              ),
              ImageWidget(
                  color: list[controllerImp.counter].image.color,
                  image: list[controllerImp.counter].image.image),
              const SizedBox(height: 40),
              TitleWidget(
                firstText: list[controllerImp.counter].title.firstText,
                secondText: list[controllerImp.counter].title.seccondText,
              ),
              const SizedBox(height: 35),
              DescriptionWidget(text: list[controllerImp.counter].description),
              const SizedBox(height: 40),
              buildBottomButtons(context, controllerImp),
              const SizedBox(height: 40),
              IndicatorWidget(counter: controllerImp.counter)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomButtons(
      BuildContext context, OnboardingControllerImp controllerImp) {
    if (controllerImp.counter != 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomButtonWidget(
            text: "back",
            width: 180,
            color: Theme.of(context).colorScheme.secondary,
            textColor: Theme.of(context).colorScheme.primary,
            onPressed: () => controllerImp.decrementCounter(),
          ),
          const SizedBox(width: 20),
          BottomButtonWidget(
            text: "Next",
            width: 180,
            color: Theme.of(context).colorScheme.primary,
            textColor: Theme.of(context).colorScheme.secondary,
            onPressed: () => controllerImp.incrementCounter(),
          ),
        ],
      );
    } else {
      return BottomButtonWidget(
          text: "Next",
          width: 180,
          color: Theme.of(context).colorScheme.primary,
          textColor: Theme.of(context).colorScheme.secondary,
          onPressed: () => controllerImp.incrementCounter());
    }
  }
}
