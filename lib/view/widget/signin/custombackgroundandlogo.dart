// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/imageassets.dart';

class BackGroundAndLogo extends StatelessWidget {
  const BackGroundAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.06,
          child: Container(
            child: Image.asset(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              ImageApp.background,
              fit: BoxFit.fill,
            ),
          ),
        ),
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
      ],
    );
  }
}
