// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServices> oninit() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initalservicse() async {
  await Get.putAsync(() => MyServices().oninit());
}
