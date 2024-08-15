import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../controller/auth/login_controller.dart';

class RememberMeWidget extends GetView<LoginControllerImp> {
  const RememberMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GetBuilder<LoginControllerImp>(
              builder: (controller) => Checkbox(
                value: controller.rememberMe,
                onChanged: (bool? newValue) {
                  controller.changeRememberMe();
                },
              ),
            ),
            const Text(
              'Remember me',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        TextButton(
            onPressed: controller.goToRestPasswordScreen,
            child: const Text(
              "Forgot Password ?",
              style: TextStyle(fontSize: 14),
            ))
      ],
    );
  }
}
