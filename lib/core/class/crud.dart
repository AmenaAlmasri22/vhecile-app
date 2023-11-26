// ignore_for_file: depend_on_referenced_packages, avoid_print, unused_import, non_constant_identifier_names
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'dart:convert';
import 'package:dartz/dartz.dart';
import '../../../../core/class/statusrequest.dart';
import '../../../../core/functions/checkinternet.dart';

class CrudPostSignIn {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        Map responsebody = jsonDecode(response.body);

        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }
}

class CrudGetMyVehicles {
  Future<Either<StatusRequest, Map>> getData(String linkurl) async {
    //3|eoLCF7w7DNK9rnakH5eF7LuXPbLOWAt3x40hr6VK6ae316ad   //postmantoken
    //677|7A4gQjejroDxFyz5e5NT3NVI8RdpsMhyYN51tWFF51d5b021  //mytoken
    String token = "3|eoLCF7w7DNK9rnakH5eF7LuXPbLOWAt3x40hr6VK6ae316ad";
    Map<String, String>? myhaeder = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    if (await checkInternet()) {
      var response = await http.get(Uri.parse(linkurl), headers: myhaeder);
      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        Map responsebody = jsonDecode(response.body);

        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }
}

class CrudGetTypeVehicles {
  Future<Either<StatusRequest, Map>> getData(String linkurl) async {
    Map<String, String>? myhaeder = {
      'Accept': 'application/json',
    };
    if (await checkInternet()) {
      var response = await http.get(Uri.parse(linkurl), headers: myhaeder);
      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        Map responsebody = jsonDecode(response.body);

        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }
}

class MultiPartRequest {
  Future<Either<StatusRequest, Map<String, dynamic>>> postmulipartdata(
      String name,
      String phone,
      String password,
      File image,
      String passwor_confirmation) async {
    if (await checkInternet()) {
      var request = http.MultipartRequest('POST', Uri.parse(LinkApp.signup));
      request.fields['fullname'] = name;
      request.fields['phone_number'] = phone;
      request.fields['password'] = password;
      request.fields['password_confirmation'] = passwor_confirmation;
      request.files.add(http.MultipartFile.fromBytes(
          'image', File(image.path).readAsBytesSync(),
          filename: image.path));
      var res = await request.send();
      var resbody = await http.Response.fromStream(res);
      final responsedata = jsonDecode(resbody.body);
      if (res.statusCode == 200 || res.statusCode == 201) {
        print(responsedata);
        Map<String, dynamic> responsebody = responsedata;
        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }
}
