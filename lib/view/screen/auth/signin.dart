// ignore_for_file: unused_local_variable, depend_on_referenced_packages, unused_import, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, avoid_types_as_parameter_names

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
import '../../widget/signin/custombackgroundandlogo.dart';
import '../../widget/signin/custombuttonsigninup.dart';
import '../../widget/signin/customtextformauth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Get.put(SignInControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: GetBuilder<SignInControllerImp>(builder: (controller) {
        return HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Form(
            key: controller.formstate,
            child: Stack(
              children: [
                const BackGroundAndLogo(),
                Positioned(
                  top: 180,
                  left: 234,
                  child: Image.asset(ImageApp.signin),
                ),
                Positioned(
                  top: 278,
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
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 400,
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
                        return validinput(val!, 5, 100, "كلمة السر");
                      },
                    ),
                  ),
                ),
                Positioned(
                    top: 480,
                    left: 22,
                    child: Container(
                        height: 21,
                        width: 123,
                        child: InkWell(
                            child: Image.asset(ImageApp.forgetpassword)))),
                Positioned(
                    top: 613,
                    left: 22,
                    child: Container(
                        height: 53,
                        width: 346,
                        child: CustoBottunSignInUp(
                          path: ImageApp.signinbutton,
                          onPressed: () {
                            controller.signIn();
                          },
                        ))),
                Positioned(
                    top: 700,
                    left: 94,
                    child: Container(
                        height: 24,
                        width: 202,
                        child: InkWell(
                          child: Image.asset(ImageApp.signupquestion),
                          onTap: () {
                            controller.gotosignup();
                          },
                        ))),
              ],
            ),
          ),
        );
      }),
    );
  }
}
