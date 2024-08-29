import 'package:elearnnig/controller/auth/verification_code_controller.dart';
import 'package:elearnnig/core/function/my_snack_bar.dart';
import 'package:elearnnig/core/ui_components/info_widget.dart';
import 'package:elearnnig/view/widget/auth/alreadywidget.dart';
import 'package:elearnnig/view/widget/auth/auth_indicator_widget.dart';
import 'package:elearnnig/view/widget/on_boarding_widgets/bottom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../core/function/auth/correct_info.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final VerificationCodeControllerImp controllerImp =
        Get.put(VerificationCodeControllerImp());
    return InfoWidget(
      builder: (context, deviceInfo) => Scaffold(
        body: GetBuilder<VerificationCodeControllerImp>(
          builder: (controller) => Stack(children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: deviceInfo.screenHeight * 0.1, horizontal: 30),
              child: ListView(children: [
                const SizedBox(height: 30),
                buildCorrectInfo(
                    falseText: "the code is incorrect",
                    trueText1: "Check code",
                    trueText2:
                        "Please Enter The Digit Code Sent To ${controllerImp.user}",
                    isNotWho: controllerImp.isNowWho),
                const SizedBox(height: 30),
                OtpTextField(
                  fieldWidth: 50.0,
                  borderRadius: BorderRadius.circular(20),
                  numberOfFields: 6,
                  enabledBorderColor: Colors.greenAccent,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  clearText: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controllerImp.checkIfWho(
                        verificationCode); // if who go to rest screen
                    // here I want to clear the field from number
                  }, // end onSubmit
                ),
                const SizedBox(height: 40),
                BottomButtonWidget(
                  text: "Continue",
                  color: Theme.of(context).colorScheme.primary,
                  width: 65,
                  textColor: Colors.white,
                  onPressed: () {
                    mySnackBar("pleas fill the 6 digits");
                  },
                ),
                const SizedBox(height: 40),
                AlreadyWidget(
                  text: '',
                  text2: 'resend the code',
                  onPressed: () => controllerImp.restTheCode(),
                )
              ]),
            ),
            if (controllerImp.isLoading) ...[
              const AuthIndicatorWidget(),
            ]
          ]),
        ),
      ),
    );
  }
}
