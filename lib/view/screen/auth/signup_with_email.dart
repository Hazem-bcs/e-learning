import 'package:elearnnig/core/ui_components/info_widget.dart';
import 'package:elearnnig/view/widget/auth/auth_indicator_widget.dart';
import 'package:elearnnig/view/widget/on_boarding_widgets/bottom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signup_with_email_controller.dart';
import '../../../core/function/validator.dart';
import '../../widget/auth/alreadywidget.dart';
import '../../widget/auth/blue_edges_widget.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/auth/titlewidget.dart';

class SignupWithEmail extends StatelessWidget {
  const SignupWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupWithEmailControllerImp controllerImp =
        Get.put(SignupWithEmailControllerImp());
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SignupWithEmailControllerImp>(
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
                              const SizedBox(height: 40),
                              const Center(
                                child: TitleWidget(
                                  text: "Welcome!",
                                ),
                              ),
                              const SizedBox(height: 25),
                              const TitleWidget(
                                text: "Sign Up to Edu Corner",
                              ),
                              const SizedBox(height: 30),
                              Form(
                                key: controllerImp.formKey,
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      controller: controllerImp.nameController,
                                      image: 'assets/images/auth/person.png',
                                      keyboardType: TextInputType.text,
                                      labelText: 'Name',
                                      validator: (val) {
                                        return validator(
                                            val: val!,
                                            min: 4,
                                            max: 50,
                                            type: "username");
                                      },
                                    ),
                                    const SizedBox(height: 20),
                                    CustomTextField(
                                      controller: controllerImp.emailController,
                                      image: 'assets/images/auth/email.png',
                                      keyboardType: TextInputType.emailAddress,
                                      labelText: 'Email Address',
                                      validator: (val) {
                                        return validator(
                                            val: val!,
                                            min: 4,
                                            max: 100,
                                            type: "email");
                                      },
                                    ),
                                    const SizedBox(height: 20),
                                    GetBuilder<SignupWithEmailControllerImp>(
                                      builder: (controller) => CustomTextField(
                                        controller:
                                            controllerImp.passwordController,
                                        image:
                                            'assets/images/auth/closedeye.png',
                                        keyboardType: TextInputType.text,
                                        labelText: 'Password',
                                        obscureText: controllerImp.obscureText,
                                        onTapSuffixIcon: () =>
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
                                    const SizedBox(height: 20),
                                    GetBuilder<SignupWithEmailControllerImp>(
                                      builder: (controller) => CustomTextField(
                                        controller: controllerImp
                                            .confirmPasswordController,
                                        image:
                                            'assets/images/auth/closedeye.png',
                                        keyboardType: TextInputType.text,
                                        labelText: 'Confirm Password',
                                        obscureText: controllerImp.obscureText2,
                                        onTapSuffixIcon: () =>
                                            controllerImp.changeObscureText2(),
                                        validator: (val) {
                                          return validator(
                                              val: val!,
                                              min: 3,
                                              max: 40,
                                              type: "rePassword",
                                              rePasswordValue: controller
                                                  .passwordController
                                                  .value
                                                  .text);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 30),
                              BottomButtonWidget(
                                text: "Continue",
                                color: Theme.of(context).colorScheme.primary,
                                width: 320,
                                textColor: Colors.white,
                                onPressed: () => controllerImp.signUp(),
                              ),
                              const SizedBox(height: 10),
                              AlreadyWidget(
                                text: 'Sign Up With ',
                                text2: 'phone?',
                                onPressed: () =>
                                    controllerImp.goToSignupWithPhone(),
                              ),
                              const SizedBox(height: 40),
                              AlreadyWidget(
                                text: 'Already have an account?',
                                text2: 'Login Now',
                                onPressed: () =>
                                    controllerImp.goToLoginScreen(),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                    if (controllerImp.indicator) ...[
                      const AuthIndicatorWidget()
                    ]
                  ],
                )),
      ),
    );
  }
}
