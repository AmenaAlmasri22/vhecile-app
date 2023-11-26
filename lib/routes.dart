// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, unused_import
import 'package:ecommercecourse/view/screen/auth/selectimageprofile.dart';
import 'package:ecommercecourse/view/screen/auth/signin.dart';
import 'package:ecommercecourse/view/screen/auth/signup.dart';
import 'package:ecommercecourse/view/screen/homepage.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const SignIn(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.signin, page: () => const SignIn()),
  GetPage(name: AppRoutes.signup, page: () => const SignUp()),
  GetPage(name: AppRoutes.vehiclepage, page: () => const Vehiclepage()),
  GetPage(
      name: AppRoutes.selectimageprofile,
      page: () => const SelectImageProfile()),
];
