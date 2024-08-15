import 'package:elearnnig/data/model/onboarding/title_onboarding_model.dart';

import 'onboarding_image_model.dart';

class OnboardingModel {
  OnboardingImageModel image;
  TitleOnboardingModel title;
  String description;

  OnboardingModel(
      {required this.description, required this.title, required this.image});
}
