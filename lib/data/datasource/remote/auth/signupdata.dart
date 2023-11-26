// ignore_for_file: non_constant_identifier_names, unused_local_variable, avoid_print, depend_on_referenced_packages, unused_import, camel_case_types

import 'dart:io';
import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'dart:convert';
import 'package:dartz/dartz.dart';

class signupdata {
  MultiPartRequest request = MultiPartRequest();
  postdata(String name, String phone, String password, File image,
      String passwor_confirmation) async {
    var response = await request.postmulipartdata(
        name, phone, password, image, passwor_confirmation);
    return response.fold((l) => l, (r) => r);
  }
}
