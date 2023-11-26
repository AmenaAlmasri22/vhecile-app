// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/typevehicle_controller.dart';

/// Flutter code sample for [DropdownMenu].

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

void main() => runApp(const DropdownMenuApp());

class DropdownMenuApp extends StatefulWidget {
  const DropdownMenuApp({super.key});

  @override
  State<DropdownMenuApp> createState() => _DropdownMenuAppState();
}

class _DropdownMenuAppState extends State<DropdownMenuApp> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = "";
    Get.put(TypeVehicleControllerImp());
    return GetBuilder<TypeVehicleControllerImp>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(title: const Text('DropdownMenu Sample')),
        body: Center(
            child: DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person),
          ),
          value: dropdownValue,
          icon: const Icon(Icons.expand_more),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          onChanged: (v) {
            setState(() {
              dropdownValue = v!;
            }); // This is called when the user selects an item.
          },
          items: controller.data.map((e) {
            return DropdownMenuItem<String>(
              onTap: () {},
              value: e["id"].toString(),
              child: Text(e["name"]),
            );
          }).toList(),
        )),
      );
    });
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TypeVehicleControllerImp>(builder: (controller) {
      return DropdownMenu<String>(
        initialSelection: controller.data.first,
        onSelected: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
      );
    });
  }
}
