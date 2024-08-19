import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HelpCenterController extends GetxController {
  send();
}

class HelpCenterControllerImp extends HelpCenterController {
  // define Controllers for get the values
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController massageController = TextEditingController();

  @override
  send() {
    if (formKey.currentState!.validate()) print("object");
  }
}
