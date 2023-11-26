// ignore_for_file: unused_import, depend_on_referenced_packages, deprecated_member_use, duplicate_import
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';
import '../../core/services/services.dart';

abstract class ProfileImageController extends GetxController {
  Future getimage();
  gotosignup();
}

class ProfileImageControllerImp extends ProfileImageController {
  MyServices myServices = Get.find();
  late String path;
  File? image;
  final picker = ImagePicker();
  @override
  Future getimage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      path = pickedFile.path;
      image = File(pickedFile.path);
      myServices.sharedPreferences.setString("image", image!.path);
    } else {
      Get.defaultDialog(title: "ُWarning", middleText: "Please select photo");
    }
    update();
  }

  @override
  gotosignup() {
    Get.offAllNamed(AppRoutes.signup, arguments: {"image": image});
  }
}
