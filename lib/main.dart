// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_constructors

import 'package:ecommercecourse/routes.dart';
import 'package:ecommercecourse/test.dart';
import 'package:ecommercecourse/view/screen/addvehicle.dart';
import 'package:ecommercecourse/view/screen/auth/selectimageprofile.dart';
import 'package:ecommercecourse/view/screen/auth/signin.dart';
import 'package:ecommercecourse/view/screen/auth/signup.dart';
import 'package:ecommercecourse/view/screen/homepage.dart';
import 'package:ecommercecourse/view/widget/add_vehicle/dropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bindings/initialbindings.dart';
import 'core/services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initalservicse();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: InitialBindings(),
        debugShowCheckedModeBanner: false,
        home: DropDownButton(),
        getPages: routes);
  }
}
