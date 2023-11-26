// ignore_for_file: avoid_print, depend_on_referenced_packages, unused_local_variable
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/core/functions/handlingdatacontroller.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:ecommercecourse/data/datasource/remote/auth/signindata.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';

abstract class SignInController extends GetxController {
  signIn();
  gotosignup();
}

class SignInControllerImp extends SignInController {
  SinInData siginData = SinInData(Get.find());
  MyServices myServices = Get.find();
  late TextEditingController phone;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool isshowpassword = true;
  StatusRequest statusRequest = StatusRequest.none;
  @override
  void onInit() {
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  signIn() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await siginData.postdata(phone.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          myServices.sharedPreferences
              .setString("id", response['data']['id'].toString());
          String userid = myServices.sharedPreferences.getString("id")!;
          myServices.sharedPreferences
              .setString("username", response['data']['fullname'].toString());
          myServices.sharedPreferences.setString("step", "1");
          Get.toNamed(AppRoutes.vehiclepage);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  gotosignup() {
    Get.toNamed(AppRoutes.selectimageprofile);
  }
}
