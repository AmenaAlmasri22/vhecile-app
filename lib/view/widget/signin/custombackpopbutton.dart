// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/imageassets.dart';

class CustomBackPopButton extends StatelessWidget {
  const CustomBackPopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Get.back();
        },
        child: Image.asset(ImageApp.backpop));
  }
}
