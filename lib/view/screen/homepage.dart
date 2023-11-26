// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, sized_box_for_whitespace, prefer_const_constructors, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/homepage_controller.dart';
import '../../core/class/handlingdataview.dart';
import '../../core/constant/imageassets.dart';
import '../../data/model/myvehicle_model.dart';
import '../widget/Vehiclepage/cart.dart';
import '../widget/signin/custombackpopbutton.dart';
import '../widget/signin/custombuttonsigninup.dart';

class Vehiclepage extends StatefulWidget {
  const Vehiclepage({super.key});

  @override
  State<Vehiclepage> createState() => _VehiclepageState();
}

class _VehiclepageState extends State<Vehiclepage> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CustoBottunSignInUp(
            path: ImageApp.addvehiclebutton,
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 37,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 121,
                    ),
                    Container(
                        width: 146,
                        height: 47,
                        child: Image.asset(ImageApp.myvehicle)),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        // width: 40,
                        // height: 40,
                        child: CustomBackPopButton()),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GetBuilder<HomePageControllerImp>(
                  builder: (controller) {
                    return HandlingDataRequest(
                        statusRequest: controller.statusRequest,
                        widget: HandlingDataRequest(
                            statusRequest: controller.statusRequest,
                            widget: SizedBox(
                                height: 550,
                                child: ListView.builder(
                                    itemCount: controller.data.length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder: (context, i) {
                                      return Cart(
                                          onTap: () {
                                            controller.changestyleitem(i);
                                          },
                                          item: MyVehcileModel.fromJson(
                                              controller.data[i]),
                                          active:
                                              controller.currentselecteditem ==
                                                      i
                                                  ? true
                                                  : false);
                                    }))));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
