// ignore_for_file: depend_on_referenced_packages, unused_import, avoid_print
import 'dart:io';
import 'package:ecommercecourse/core/class/crud.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../data/datasource/remote/auth/signupdata.dart';

abstract class SignUpController extends GetxController {
  signup();
  gotosignin();
  initaldata();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController passwordConfigration;
  StatusRequest statusRequest = StatusRequest.none;

  signupdata signupData = signupdata();

  List data = [];

  @override
  void onInit() {
    initaldata();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  signup() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postdata(username.text, phone.text,
          password.text, Get.arguments["image"], passwordConfigration.text);
      print("=============================== Controller $response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          //  data.addAll(response['data']);
          Get.offNamed(AppRoutes.signin);
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Phone Number Or Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  gotosignin() {
    Get.offNamed(AppRoutes.signin);
  }

  @override
  initaldata() {
    password = TextEditingController();
    phone = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    passwordConfigration = TextEditingController();
  }
}
