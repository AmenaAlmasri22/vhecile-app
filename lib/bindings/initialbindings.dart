// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';
import '../core/class/crud.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Start
    Get.put(CrudPostSignIn());
    Get.put(CrudGetMyVehicles());
    Get.put(MultiPartRequest());
    Get.put(CrudGetTypeVehicles());
  }
}
