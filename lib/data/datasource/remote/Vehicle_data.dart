// ignore_for_file: file_names

import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class VehicleData {
  CrudGetMyVehicles crud;
  VehicleData(this.crud);
  getData1() async {
    var response = await crud.getData(LinkApp.vehiclepage);
    return response.fold((l) => l, (r) => r);
  }
}
