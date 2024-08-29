import 'package:get/get.dart';

String? validator({
  required String val,
  required int min,
  required int max,
  required String type,
  String? rePasswordValue,
}) {
  if (val.isEmpty) {
    return "can't leave this field empty";
  }

  switch (type) {
    case "username":
      if (!GetUtils.isUsername(val)) {
        return "this is not a valid value";
      }
      break;
    case "emailAndPhone":
      if (!(GetUtils.isEmail(val) ||
          (GetUtils.isPhoneNumber(val) &&
              val.length >= 10 &&
              val.length <= 13))) {
        return "this is not a valid value";
      }
      break;
    case "email":
      if (!GetUtils.isEmail(val)) {
        return "this isn't a valid email";
      }
      break;
    case "phone":
      if (!GetUtils.isPhoneNumber(val)) {
        return "this is not a phone number";
      } else if (val.length < 10) {
        return "this number is too short";
      } else if (val.length > 12) {
        return "this number is too long";
      }
      break;
    case "rePassword":
      if (val != rePasswordValue) {
        return "The two values are not equal";
      }
      break;
    case "password":
      if (val.length < 5) {
        return "this password is too short";
      }
      break;
    case "search":
      if (val.length < min) {
        return "Search term is too short";
      } else if (val.length > max) {
        return "Search term is too long";
      } else if (!RegExp(r'^[a-zA-Z0-9\s]+$').hasMatch(val)) {
        return "Search term contains invalid characters";
      }
      break;
    default:
      return "Invalid type";
  }

  return null;
}
