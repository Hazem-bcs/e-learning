import 'package:elearnnig/core/function/auth/correct_info.dart';
import 'package:elearnnig/view/widget/auth/auth_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/search_on_user.dart';
import '../../../core/function/validator.dart';
import '../../../core/ui_components/info_widget.dart';
import '../../widget/auth/alreadywidget.dart';
import '../../widget/auth/blue_edges_widget.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/on_boarding_widgets/bottom_button_widget.dart';

class SearchOnUser extends StatelessWidget {
  const SearchOnUser({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchOnUserImp controllerImp = Get.put(SearchOnUserImp());
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SearchOnUserImp>(
          builder: (controller) => Stack(
            children: [
              InfoWidget(builder: (context, deviceInfo) {
                double screenWidth = deviceInfo.screenWidth;
                double screenHeight = deviceInfo.screenHeight;
                return BlueEdgesWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: ListView(
                      children: [
                        SizedBox(
                          height: deviceInfo.screenHeight * 0.55,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 40),
                              buildCorrectInfo(
                                  isNotWho: controllerImp.isNotWho,
                                  falseText:
                                      "we can\n't find your account try to remember your data",
                                  trueText1: "Dont worry!",
                                  trueText2: "Enter your number or email"),
                              const SizedBox(height: 30),
                              Form(
                                key: controllerImp.formKey,
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      controller: controllerImp.emailController,
                                      image: 'assets/images/auth/person.png',
                                      keyboardType: TextInputType.emailAddress,
                                      labelText: 'Email or Number',
                                      validator: (val) {
                                        return validator(
                                            val: val!,
                                            min: 4,
                                            max: 100,
                                            type: "emailAndPhone");
                                      },
                                    ),
                                    const SizedBox(height: 20),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 30),
                              BottomButtonWidget(
                                text: "Continue",
                                color: Theme.of(context).colorScheme.primary,
                                width: 320,
                                textColor: Colors.white,
                                onPressed: () =>
                                    controllerImp.checkIfUserExcised(),
                              ),
                              AlreadyWidget(
                                text: 'You forget your details?',
                                text2: 'Contact with us',
                                onPressed: () =>
                                    controllerImp.goToHelpCenterScreen(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              if (controllerImp.isLoading) ...[const AuthIndicatorWidget()]
            ],
          ),
        ),
      ),
    );
  }
}
