// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_local_variable, depend_on_referenced_packages, unused_import, prefer_const_constructors, sized_box_for_whitespace, avoid_types_as_parameter_names

import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/functions/alertexitapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../core/constant/imageassets.dart';
import '../../../core/constant/routes.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/signin/custombackgroundandlogo.dart';
import '../../widget/signin/custombackpopbutton.dart';
import '../../widget/signin/custombuttonsigninup.dart';
import '../../widget/signin/customtextformauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: alertexitapp,
        child: GetBuilder<SignUpControllerImp>(builder: (controller) {
          return HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Form(
                key: controller.formstate,
                child: Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const BackGroundAndLogo(),
                    Positioned(
                      top: 40,
                      left: 300,
                      child: CustomBackPopButton(),
                    ),
                    Positioned(
                      top: 140,
                      left: 234,
                      child: Image.asset(ImageApp.signup),
                    ),
                    Positioned(
                      top: 220,
                      left: 22,
                      child: Container(
                        height: 60,
                        width: 346,
                        child: CustomTextFormAuth(
                          hinttext: "الاسم",
                          iconData: Icons.person,
                          isNumber: false,
                          mycontroller: controller.username,
                          valid: (val) {
                            return validinput(val!, 5, 100, "الاسم");
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 22,
                      child: Container(
                        height: 60,
                        width: 346,
                        child: CustomTextFormAuth(
                            hinttext: "رقم الهاتف",
                            iconData: Icons.phone,
                            isNumber: true,
                            mycontroller: controller.phone,
                            valid: (val) {
                              return validinput(val!, 5, 100, "رقم الهاتف");
                            }),
                      ),
                    ),
                    Positioned(
                      top: 380,
                      left: 22,
                      child: Container(
                        height: 60,
                        width: 346,
                        child: CustomTextFormAuth(
                            obscureText: true,
                            prefixIcon: Image.asset(ImageApp.icon),
                            hinttext: "كلمة السر",
                            iconData: Icons.lock_sharp,
                            isNumber: false,
                            mycontroller: controller.password,
                            valid: (val) {
                              return validinput(val!, 5, 100, "كلمة المرور");
                            }),
                      ),
                    ),
                    Positioned(
                      top: 460,
                      left: 22,
                      child: Container(
                        height: 60,
                        width: 346,
                        child: CustomTextFormAuth(
                            obscureText: true,
                            prefixIcon: Image.asset(ImageApp.icon),
                            hinttext: "تأكيد كلمة السر",
                            iconData: Icons.lock_sharp,
                            isNumber: false,
                            mycontroller: controller.passwordConfigration,
                            valid: (val) {
                              return validinput(
                                  val!, 5, 100, "تأكيد كلمة المرور");
                            }),
                      ),
                    ),
                    Positioned(
                        top: 540,
                        left: 22,
                        child: Container(
                            height: 53,
                            width: 346,
                            child: CustoBottunSignInUp(
                              path: ImageApp.signupbutton,
                              onPressed: () {
                                controller.signup();
                              },
                            ))),
                    Positioned(
                        top: 640,
                        left: 94,
                        child: Container(
                            height: 24,
                            width: 202,
                            child: InkWell(
                                child: Image.asset(ImageApp.signinquestion)))),
                    Positioned(
                        top: 710,
                        left: 51,
                        child: Container(
                            height: 42,
                            width: 289,
                            child: InkWell(
                                child: Image.asset(ImageApp.sequrity)))),
                  ],
                )),
          );
        }),
      ),
    );
  }
}
