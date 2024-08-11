import 'dart:ui';

import 'package:elearnnig/data/data_source/statics/images.dart';

import '../../model/onboarding/onboardingImageModel.dart';
import '../../model/onboarding/onboarding_model.dart';
import '../../model/onboarding/title_onboarding_model.dart';

List<OnboardingModel> listOnboarding = [
  OnboardingModel(
    description:
        "Lorem ipsum dolor sit amet a aconsectetur. Ut proin accumsan be tincidunt ultricies leo.",
    title: TitleOnboardingModel(
      firstText: "explore limitless",
      seccondText: "Learning",
    ),
    image: OnboardingImageModel(
      image: AppImageAsset.onBoardingImageOne,
      color: const Color(0xFFD9D9D9),
    ),
  ),
  OnboardingModel(
    description:
        "Lorem ipsum dolor claim io system and we can do it right be tincidunt ultricies leo.",
    title: TitleOnboardingModel(
      firstText: "Dive into Educational",
      seccondText: "Experience",
    ),
    image: OnboardingImageModel(
      image: AppImageAsset.onBoardingImageTow,
      color: const Color(0xFF0E74BC),
    ),
  ),
  OnboardingModel(
    description:
        "Lorem ipsum dolor sit prom system and we will is it and you accumsan be tincidunt ultricies leo.",
    title: TitleOnboardingModel(
      firstText: "Start your Academic",
      seccondText: "Journey",
    ),
    image: OnboardingImageModel(
      image: AppImageAsset.onBoardingImageThree,
      color: const Color(0xFFD9D9D9),
    ),
  ),
  OnboardingModel(
    description:
        "Lorem ipsum dolor sit amet a Faunctio Corner Sit bit Al Exam OK leo.",
    title: TitleOnboardingModel(
      firstText: "Engage Deeply with",
      seccondText: "Edu Corner",
    ),
    image: OnboardingImageModel(
      image: AppImageAsset.onBoardingImageFour,
      color: const Color(0xFF0E74BC),
    ),
  ),
];
