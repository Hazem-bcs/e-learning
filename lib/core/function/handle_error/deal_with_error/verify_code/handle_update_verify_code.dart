import 'package:elearnnig/core/function/my_snack_bar.dart';
import 'package:flutter/material.dart';

void handleUpdateVerifyCode(bool isSuccess) {
  if (isSuccess) {
    mySnackBar('we resent a code to you check you inbox', Colors.green);
  } else {
    mySnackBar('some thing went wrong pleas try again');
  }
}
