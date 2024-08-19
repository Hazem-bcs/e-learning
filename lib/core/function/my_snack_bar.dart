import 'package:flutter/material.dart';
import 'package:get/get.dart';

void mySnackBar(String title, [Color? color]) {
  Get.showSnackbar(GetSnackBar(
    messageText: Text(
      title,
      style: TextStyle(color: color ?? Colors.redAccent),
    ),
    duration: const Duration(seconds: 2),
  ));
}
