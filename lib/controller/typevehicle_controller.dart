// ignore_for_file: depend_on_referenced_packages, overridden_fields, annotate_overrides, override_on_non_overriding_member, avoid_print, unused_import

import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/class/crud.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdatacontroller.dart';
import '../data/datasource/remote/typevehicle_data.dart';

abstract class TypeVehicleController extends GetxController {
  getItems();
  selectitem(var value);
}

class TypeVehicleControllerImp extends TypeVehicleController {
  TypeVehicleData vehicleData = TypeVehicleData(Get.find());
  List data = [];
  StatusRequest statusRequest = StatusRequest.none;
  late int selecteditem;
  @override
  void onInit() {
    selecteditem = data.first;
    getItems();
    super.onInit();
  }

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
      update(); // End
    }
  }

  @override
  selectitem(value) {
    selecteditem = value;
    update();
  }
}
