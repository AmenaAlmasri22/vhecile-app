// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';

validinput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "valid user name";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "valid email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "valid phone";
    }
  }
  if (val.length < min) {
    return "can't be less than $min";
  }
  if (val.length > max) {
    return "can't be larger than $max";
  }
  if (val.isEmpty) {
    return "can't be empty";
  }
}
