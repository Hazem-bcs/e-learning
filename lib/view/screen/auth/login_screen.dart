import 'package:elearnnig/controller/auth/login_controller.dart';
import 'package:elearnnig/view/widget/my_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/function/auth/correct_info.dart';
import '../../../core/function/validator.dart';
import '../../../core/ui_components/info_widget.dart';
import '../../widget/auth/alreadywidget.dart';
import '../../widget/auth/blue_edges_widget.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/auth/divider_or_widget.dart';
import '../../widget/auth/remember_me_widget.dart';
import '../../widget/on_boarding_widgets/bottom_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginControllerImp controllerImp = Get.put(LoginControllerImp());
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<LoginControllerImp>(
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
                          height: deviceInfo.screenHeight * 0.85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 40),
                              GetBuilder<LoginControllerImp>(
                                  builder: (controller) => buildCorrectInfo(
                                      isNotWho: controllerImp.isNotWho,
                                      trueText1: "Welcome Back!",
                                      trueText2: "Login to Edu Corner",
                                      falseText:
                                          "Enter your correct email address or password to login")),
                              const SizedBox(height: 30),
                              Form(
                                key: controllerImp.formKey,
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      controller: controllerImp.phoneController,
                                      image: 'assets/images/auth/phone.png',
                                      keyboardType: TextInputType.emailAddress,
                                      labelText: 'phone or email',
                                      validator: (val) {
                                        return validator(
                                            val: val!,
                                            min: 4,
                                            max: 50,
                                            type: "emailAndPhone");
                                      },
                                    ),
                                    const SizedBox(height: 20),
                                    GetBuilder<LoginControllerImp>(
                                      builder: (controller) => CustomTextField(
                                        controller:
                                            controllerImp.passwordController,
                                        image:
                                            'assets/images/auth/closedeye.png',
                                        keyboardType: TextInputType.text,
                                        labelText: 'Password',
                                        obscureText: controllerImp.obscureText,
                                        onTap: () =>
                                            controllerImp.changeObscureText(),
                                        validator: (val) {
                                          return validator(
                                              val: val!,
                                              min: 5,
                                              max: 100,
                                              type: "password");
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              const RememberMeWidget(),
                              const SizedBox(height: 30),
                              BottomButtonWidget(
                                text: "Continue",
                                color: Theme.of(context).colorScheme.primary,
                                width: 320,
                                textColor: Colors.white,
                                onPressed: () => controllerImp.login(),
                              ),
                              const SizedBox(height: 25),
                              const DividerOrWidget(),
                              const SizedBox(height: 25),
                              BottomButtonWidget(
                                showImage: true,
                                image: 'assets/images/auth/google.png',
                                text: "   Sign In with Google",
                                color: Theme.of(context).colorScheme.secondary,
                                width: 320,
                                textColor: Colors.black54,
                                onPressed: () =>
                                    controllerImp.signInWithGoogle(),
                              ),
                              const SizedBox(height: 20),
                              BottomButtonWidget(
                                showImage: true,
                                image: 'assets/images/auth/facebook.png',
                                text: "   Sign In with facebook",
                                color: Theme.of(context).colorScheme.primary,
                                width: 320,
                                textColor:
                                    Theme.of(context).colorScheme.secondary,
                                onPressed: () =>
                                    controllerImp.signInWithFacebook(),
                              ),
                              const SizedBox(height: 20),
                              AlreadyWidget(
                                text: 'you don\'t have an account?',
                                text2: 'SignUp Now',
                                onPressed: () =>
                                    controllerImp.goToSignupScreen(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              if (controllerImp.isLoading) ...[const MyIndicatorWidget()]
            ],
          ),
        ),
      ),
    );
  }
}
