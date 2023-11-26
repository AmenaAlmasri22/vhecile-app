// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_adjacent_string_concatenation, unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../core/constant/imageassets.dart';
import '../../../data/model/myvehicle_model.dart';
import '../customtextapp.dart';

class Cart extends StatefulWidget {
  final bool? active;
  final MyVehcileModel item;
  final void Function()? onTap;

  const Cart({super.key, this.active, required this.item, this.onTap});
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
//var urlimage = widget.item.idImage;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        children: [
          GestureDetector(
            //    behavior: HitTestBehavior.translucent,
            onTap: widget.onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 20),
              width: 300,
              height: 255,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: widget.active == false
                    ? [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ]
                    : null,
                border: widget.active == true
                    ? Border.all(
                        width: 5,
                        color: const Color.fromARGB(255, 234, 80, 63),
                      )
                    : null,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(150.0),
                          child: Image.asset(
                            ImageApp.car,
                          )),
                      const SizedBox(
                        width: 50,
                      ),
                      CustomTextApp(text: widget.item.model!, colortext: false
                          //    widget.active
                          ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      CustomTextApp(
                          text: '1 كم' + ' / ' + '50' + 'ل.س',
                          colortext: widget.active
                          //widget.active
                          ),
                      const SizedBox(
                        width: 85,
                      ),
                      CustomTextApp(
                          text: "سعر الكيلو :", colortext: widget.active
                          //widget.active
                          ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      CustomTextApp(
                          text: '1 كم' + ' / ' + '50' + 'ل.س',
                          colortext: widget.active
                          //widget.active
                          ),
                      const SizedBox(
                        width: 66,
                      ),
                      CustomTextApp(
                          text: "نسبة الشركة :", colortext: widget.active
                          //widget.active
                          ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
