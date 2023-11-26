import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class TypeVehicleData {
  CrudGetMyVehicles crud;
  TypeVehicleData(this.crud);
  getData1() async {
    var response = await crud.getData(LinkApp.typevehicle);
    return response.fold((l) => l, (r) => r);
  }
}
