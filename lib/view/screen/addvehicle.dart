// ignore_for_file: unused_local_variable, depend_on_referenced_packages, unused_import, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, avoid_types_as_parameter_names, avoid_unnecessary_containers

import 'package:ecommercecourse/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signin_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/imageassets.dart';
import '../../../core/constant/routes.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/signin/custombackpopbutton.dart';
import '../widget/signin/custombuttonsigninup.dart';
import '../widget/signin/customtextformauth.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  @override
  Widget build(BuildContext context) {
    // Get.put(SignInControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:
          //GetBuilder<SignInControllerImp>(builder: (controller) {
          // return
          // HandlingDataRequest(
          //statusRequest: controller.statusRequest,
          //widget:
          Form(
        // key: controller.formstate,
        child: Stack(
          children: [
            Positioned(
              top: 55,
              left: 150,
              child: Image.asset(ImageApp.addvehicle),
            ),
            const Positioned(
              top: 25,
              left: 300,
              child: CustomBackPopButton(),
            ),
            Positioned(
              top: 120,
              left: 22,
              child: Container(
                height: 60,
                width: 346,
                child: CustomTextFormAuth(
                  hinttext: "نوع المركبة",
                  iconData: Icons.phone,
                  isNumber: true,
                  mycontroller: null,
                  valid: (val) {
                    return validinput(val!, 5, 100, "نوع المركبة");
                  },
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 22,
              child: Container(
                height: 60,
                width: 346,
                child: CustomTextFormAuth(
                  obscureText: true,
                  prefixIcon: Image.asset(ImageApp.icon),
                  hinttext: "الموديل",
                  iconData: Icons.lock_sharp,
                  isNumber: false,
                  mycontroller: null,
                  valid: (val) {
                    return validinput(val!, 5, 100, "الموديل");
                  },
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: 22,
              child: Container(
                height: 60,
                width: 346,
                child: CustomTextFormAuth(
                    obscureText: true,
                    prefixIcon: Image.asset(ImageApp.icon),
                    hinttext: "لون المركبة",
                    iconData: Icons.lock_sharp,
                    isNumber: false,
                    mycontroller: null,
                    valid: (val) {
                      return validinput(val!, 5, 100, "لون المركبة");
                    }),
              ),
            ),
            Positioned(
              top: 360,
              left: 22,
              child: Container(
                height: 60,
                width: 346,
                child: CustomTextFormAuth(
                    obscureText: true,
                    prefixIcon: Image.asset(ImageApp.icon),
                    hinttext: "رقم اللوحة",
                    iconData: Icons.lock_sharp,
                    isNumber: false,
                    mycontroller: null,
                    valid: (val) {
                      return validinput(val!, 5, 100, "رقم اللوحة");
                    }),
              ),
            ),
            Positioned(
                top: 440,
                left: 22,
                child: Container(child: Image.asset(ImageApp.listphotos))),
            // Positioned(
            //     top: 613,
            //     left: 22,
            //     child: Container(
            //         height: 53,
            //         width: 346,
            //         child: CustoBottunSignInUp(
            //           path: ImageApp.signinbutton,
            //           onPressed: () {
            //             controller.signIn();
            //           },
            //         ))),
            // Positioned(
            //     top: 700,
            //     left: 94,
            //     child: Container(
            //         height: 24,
            //         width: 202,
            //         child: InkWell(
            //           child: Image.asset(ImageApp.signupquestion),
            //           onTap: () {
            //             controller.gotosignup();
            //           },
            //         ))),
            // Positioned(
            //     top: 700,
            //     left: 94,
            //     child: Container(
            //         height: 24,
            //         width: 202,
            //         child: InkWell(
            //           child: Image.asset(ImageApp.signupquestion),
            //           onTap: () {
            //             controller.gotosignup();
            //           },
            //         ))),
            // Positioned(
            //     top: 700,
            //     left: 94,
            //     child: Container(
            //         height: 24,
            //         width: 202,
            //         child: InkWell(
            //           child: Image.asset(ImageApp.signupquestion),
            //           onTap: () {
            //             controller.gotosignup();
            //           },
            //         ))),
            // Positioned(
            //     top: 700,
            //     left: 94,
            //     child: Container(
            //         height: 24,
            //         width: 202,
            //         child: InkWell(
            //           child: Image.asset(ImageApp.signupquestion),
            //           onTap: () {
            //             controller.gotosignup();
            //           },
            //         ))
          ],
        ),
      ),
      //)
      //;
      //     }),
    );
  }
}
