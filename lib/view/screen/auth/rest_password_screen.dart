import 'package:elearnnig/controller/auth/rest_password_controller.dart';
import 'package:elearnnig/view/widget/my_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/function/validator.dart';
import '../../../core/ui_components/info_widget.dart';
import '../../widget/auth/blue_edges_widget.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/auth/titlewidget.dart';
import '../../widget/on_boarding_widgets/bottom_button_widget.dart';

class RestPasswordScreen extends StatelessWidget {
  const RestPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RestPasswordControllerImp controllerImp =
        Get.put(RestPasswordControllerImp());
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<RestPasswordControllerImp>(
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
                              const Center(
                                child: TitleWidget(
                                  text: "Reset Password",
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Center(
                                  child: TitleWidget(
                                text:
                                    "Lorem ipsum dolor sit amet a aconsectetur",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    letterSpacing: 2),
                              )),
                              const SizedBox(height: 30),
                              Form(
                                key: controllerImp.formKey,
                                child: Column(
                                  children: [
                                    GetBuilder<RestPasswordControllerImp>(
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
                                    const SizedBox(height: 20),
                                    GetBuilder<RestPasswordControllerImp>(
                                      builder: (controller) => CustomTextField(
                                        controller: controllerImp
                                            .confirmPasswordController,
                                        image:
                                            'assets/images/auth/closedeye.png',
                                        keyboardType: TextInputType.text,
                                        labelText: 'Confirm Password',
                                        obscureText: controllerImp.obscureText2,
                                        onTap: () =>
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
                                text: "SAVE CHANGES",
                                color: Theme.of(context).colorScheme.primary,
                                width: 320,
                                textColor: Colors.white,
                                onPressed: () => controllerImp.success(),
                              ),
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
