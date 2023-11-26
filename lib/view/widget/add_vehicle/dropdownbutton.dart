// ignore_for_file: depend_on_referenced_packages, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/typevehicle_controller.dart';

class DropDownButton extends GetView<TypeVehicleControllerImp> {
  const DropDownButton({super.key});

  @override
  Widget build(BuildContext context) {
    var currentSelectedValue;
    //  int value = 1;
    Get.put(TypeVehicleControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Center(
            child: DropdownButton(
          //   isDense: true,
          isExpanded: true,
          value: currentSelectedValue,
          icon: const Icon(Icons.expand_more),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          onChanged: (v) {
            currentSelectedValue = controller.selectitem(v);
            print(v);
          },
          items: controller.data.map((items) {
            return DropdownMenuItem(
              //     onTap: () {},
              value: items["id"].toString(),
              child: Text(items["name"].toString()),
            );
          }).toList(),
        )));
  }
}
