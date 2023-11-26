// ignore_for_file: unused_import

import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:lottie/lottie.dart';

import '../constant/imageassets.dart';

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 200,
              ),
              CircularProgressIndicator(
                color: Colors.deepOrange,
              ),
            ],
          ))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 200,
                  ),
                  Text("check internet",
                      style: TextStyle(
                          fontFamily: 'Vazirmatn-Regular',
                          color: Color.fromARGB(255, 234, 80, 63),
                          fontSize: 30)),
                ],
              ))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 200,
                      ),
                      Text("server failure",
                          style: TextStyle(
                              fontFamily: 'Vazirmatn-Regular',
                              color: Color.fromARGB(255, 234, 80, 63),
                              fontSize: 30)),
                    ],
                  ))
                : widget;
  }
}
