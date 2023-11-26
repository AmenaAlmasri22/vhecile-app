// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_null_comparison, depend_on_referenced_packages, unused_import
import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../controller/auth/profileimage_controller.dart';
import '../../../core/constant/imageassets.dart';
import '../../widget/signin/custombuttonsigninup.dart';

class SelectImageProfile extends StatelessWidget {
  const SelectImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileImageControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<ProfileImageControllerImp>(builder: (controller) {
        return Stack(
          children: [
            Positioned(
              top: 49.11,
              left: 139,
              child: Center(
                  child: Container(
                // height: 49.11,
                width: 112,
                child: SvgPicture.asset(ImageApp.logo),
              )),
            ),
            Positioned(
              top: 187,
              left: 158,
              child: Image.asset(ImageApp.addyourphoto),
            ),
            Positioned(
              top: 231,
              left: 220,
              child: Image.asset(ImageApp.makeyourphotoclear),
            ),
            Positioned(
              top: 344,
              left: 75,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 22,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ]),
                  height: 241,
                  width: 241,
                  child: Center(
                    child: controller.image == null
                        ? Image.asset(ImageApp.preson)
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(150.0),
                            child: Image.file(
                              controller.image!,
                              height: 300.0,
                              width: 300.0,
                              fit: BoxFit.fill,
                            )),
                  )),
            ),
            Positioned(
              top: 530,
              left: 232,
              child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 234, 80, 63),
                  child: const Icon(
                    size: 40,
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    controller.getimage();
                  }),
            ),
            Positioned(
              top: 680,
              left: 22,
              child: Container(
                  width: 346,
                  height: 53,
                  child: CustoBottunSignInUp(
                    path: ImageApp.next,
                    onPressed: () {
                      controller.gotosignup();
                    },
                  )),
            ),
          ],
        );
      }),
    );
  }
}
