import 'package:elearnnig/controller/auth/signup_controller.dart';
import 'package:elearnnig/core/ui_components/info_widget.dart';
import 'package:elearnnig/view/widget/on_boarding_widgets/bottom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/function/validator.dart';
import '../../widget/auth/alreadywidget.dart';
import '../../widget/auth/blue_edges_widget.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/auth/divider_or_widget.dart';
import '../../widget/auth/titlewidget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupControllerImp controllerImp = Get.put(SignupControllerImp());
    return SafeArea(
      child: Scaffold(
        body: InfoWidget(builder: (context, deviceInfo) {
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
                                val: val!, min: 4, max: 50, type: "username");
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
                                val: val!, min: 4, max: 100, type: "email");
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          controller: controllerImp.phoneController,
                          image: 'assets/images/auth/phone.png',
                          keyboardType: TextInputType.phone,
                          labelText: 'phone',
                          validator: (val) {
                            return validator(
                                val: val!, min: 4, max: 50, type: "phone");
                          },
                        ),
                        const SizedBox(height: 20),
                        GetBuilder<SignupControllerImp>(
                          builder: (controller) => CustomTextField(
                            controller: controllerImp.passwordController,
                            image: 'assets/images/auth/closedeye.png',
                            keyboardType: TextInputType.text,
                            labelText: 'Password',
                            obscureText: controllerImp.obscureText,
                            onTap: () => controllerImp.changeObscureText(),
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
                        GetBuilder<SignupControllerImp>(
                          builder: (controller) => CustomTextField(
                            controller: controllerImp.confirmPasswordController,
                            image: 'assets/images/auth/closedeye.png',
                            keyboardType: TextInputType.text,
                            labelText: 'Confirm Password',
                            obscureText: controllerImp.obscureText2,
                            onTap: () => controllerImp.changeObscureText2(),
                            validator: (val) {
                              return validator(
                                  val: val!,
                                  min: 3,
                                  max: 40,
                                  type: "rePassword",
                                  rePasswordValue:
                                      controller.passwordController.value.text);
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
                  const SizedBox(height: 25),
                  const DividerOrWidget(),
                  const SizedBox(height: 25),
                  BottomButtonWidget(
                    showImage: true,
                    image: 'assets/images/auth/google.png',
                    text: "   Sign Up with Google",
                    color: Theme.of(context).colorScheme.secondary,
                    width: 320,
                    textColor: Colors.black54,
                    onPressed: () => print,
                  ),
                  const SizedBox(height: 20),
                  BottomButtonWidget(
                    showImage: true,
                    image: 'assets/images/auth/facebook.png',
                    text: "   Sign Up with facebook",
                    color: Theme.of(context).colorScheme.primary,
                    width: 320,
                    textColor: Theme.of(context).colorScheme.secondary,
                    onPressed: () => print,
                  ),
                  const SizedBox(height: 20),
                  AlreadyWidget(
                    text: 'Already have an account?',
                    text2: 'Login Now',
                    onPressed: () => controllerImp.login(),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
