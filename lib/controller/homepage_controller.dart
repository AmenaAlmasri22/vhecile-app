// ignore_for_file: depend_on_referenced_packages, overridden_fields, annotate_overrides, override_on_non_overriding_member, avoid_print, unused_import

import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/class/crud.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdatacontroller.dart';
import '../data/datasource/remote/Vehicle_data.dart';

abstract class HomePageController extends GetxController {
  intialData();
  //goToPageProductDetails();
  getItems();
  changestyleitem(int i);
}

class HomePageControllerImp extends HomePageController {
  int currentselecteditem = 0;
  VehicleData vehicleData = VehicleData(Get.find());
  List data = [];
  StatusRequest statusRequest = StatusRequest.none;
  MyServices myServices = Get.find();

  @override
  void onInit() {
    getItems();
    super.onInit();
  }

  @override
  intialData() {}
  @override
  getItems() async {
    statusRequest = StatusRequest.loading;
    var response = await vehicleData.getData1();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  changestyleitem(i) {
    currentselecteditem = i;
    update();
  }
}
