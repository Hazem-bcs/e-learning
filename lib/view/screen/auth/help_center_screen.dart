import 'package:elearnnig/core/ui_components/info_widget.dart';
import 'package:elearnnig/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/help_center_controller.dart';
import '../../../core/function/validator.dart';
import '../../widget/on_boarding_widgets/bottom_button_widget.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HelpCenterControllerImp controllerImp =
        Get.put(HelpCenterControllerImp());
    return InfoWidget(
      builder: (context, deviceInfo) => Scaffold(
        appBar: AppBar(
          title: const Text("Help & Support"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              SizedBox(height: deviceInfo.screenHeight * 0.1),
              Form(
                  key: controllerImp.formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: controllerImp.nameController,
                        labelText: 'Your name',
                        keyboardType: TextInputType.name,
                        height: 90,
                        maxLength: 40,
                        validator: (val) {
                          return validator(
                              val: val!, min: 4, max: 50, type: "username");
                        },
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: controllerImp.emailController,
                        labelText: 'Your email',
                        keyboardType: TextInputType.emailAddress,
                        height: 90,
                        maxLength: 40,
                        validator: (val) {
                          return validator(
                              val: val!, min: 4, max: 100, type: "email");
                        },
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: controllerImp.massageController,
                        labelText: 'Describe Your Problem...',
                        keyboardType: TextInputType.text,
                        height: deviceInfo.screenHeight * 0.3,
                        maxLength: 400,
                        maxLines: 8,
                        minLines: 7,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "can't leave this field empty";
                          }
                          return null;
                        },
                      ),
                    ],
                  )),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceInfo.screenWidth * 0.2),
                child: BottomButtonWidget(
                  text: "Send",
                  color: Theme.of(context).colorScheme.primary,
                  width: 150,
                  textColor: Colors.white,
                  onPressed: () => controllerImp.send(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
