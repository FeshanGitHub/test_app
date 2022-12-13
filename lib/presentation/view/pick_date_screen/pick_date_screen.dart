import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/presentation/controller/pick_date_controller/pick_date_controller.dart';
import 'package:test_app/presentation/resources/routes_manager.dart';
import '../../../scale_controller.dart';

class PickDateScreen extends GetView<PickDateController> {
  const PickDateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Events"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: InkWell(
                      onTap: () {
                        Get.defaultDialog(
                          title: "Years",
                          titleStyle: TextStyle(color: Colors.grey[400]),
                          content: SizedBox(
                              height: ScaleController.H * 0.7,
                              width: ScaleController.W,
                              child: ListView.builder(
                                itemCount: controller.yearList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Divider(
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        height: ScaleController.H * 0.02,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.selectedYear.value =
                                              controller.yearList[index];
                                          // if (controller.selectedMonth.value ==
                                          //             'February' &&
                                          //     // controller
                                          //     //     .selectedYear.value ==
                                          //     //     '2016' ||
                                          //     //     controller
                                          //     //             .selectedYear.value ==
                                          //     //         '2017' ||
                                          //     controller.selectedYear.value ==
                                          //         '2018' ||
                                          //     controller.selectedYear.value ==
                                          //         '2019' ||
                                          //     controller.selectedYear.value ==
                                          //         '2021' ||
                                          //     controller.selectedYear.value ==
                                          //         '2022' ||
                                          //     controller.selectedYear.value ==
                                          //         '2023' ||
                                          //     controller.selectedYear.value ==
                                          //         '2025') {
                                          //   controller.isFebruary.value = true;
                                          //   controller.isFebruaryLeap.value =
                                          //       false;
                                          //   controller.isThirty.value = false;
                                          //   controller.isThirtyOne.value =
                                          //       false;
                                          // } else if (controller
                                          //                 .selectedMonth.value ==
                                          //             'February' &&
                                          //         controller
                                          //                 .selectedYear.value ==
                                          //             '2016' ||
                                          //     controller.selectedYear.value ==
                                          //         '2020' ||
                                          //     controller.selectedYear.value ==
                                          //         '2024') {
                                          //   controller.isFebruary.value = false;
                                          //   controller.isFebruaryLeap.value =
                                          //       true;
                                          //   controller.isThirty.value = false;
                                          //   controller.isThirtyOne.value =
                                          //       false;
                                          //}
                                          Get.back();
                                        },
                                        child: Text(
                                          controller.yearList[index],
                                          style: const TextStyle(
                                              color: Colors.blue, fontSize: 20),
                                        ),
                                      ),
                                      SizedBox(
                                        height: ScaleController.H * 0.02,
                                      ),
                                    ],
                                  );
                                },
                              )),
                        );
                      },
                      child: Container(
                          height: ScaleController.H * 0.06,
                          width: ScaleController.W * 0.4,
                          decoration: const BoxDecoration(
                              color: Colors.indigo,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Center(
                              child: Obx(() => Text(
                                    controller.selectedYear.value,
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )))),
                    ),
                  ),
                  SizedBox(
                    width: ScaleController.W * 0.05,
                  ),
                  InkWell(
                    onTap: () {
                      Get.defaultDialog(
                        title: "Month",
                        titleStyle: TextStyle(color: Colors.grey[400]),
                        content: SizedBox(
                            height: ScaleController.H * 0.7,
                            width: ScaleController.W,
                            child: ListView.builder(
                              itemCount: controller.monthList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Divider(
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      height: ScaleController.H * 0.02,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.selectedMonth.value =
                                            controller.monthList[index];
                                      if (controller
                                                    .selectedMonth.value == 'January' ||
                                            controller.selectedMonth.value ==
                                                'March' ||
                                            controller.selectedMonth.value ==
                                                'May' ||
                                            controller.selectedMonth.value ==
                                                'July' ||
                                            controller.selectedMonth.value ==
                                                'August' ||
                                            controller.selectedMonth.value ==
                                                'October' ||
                                            controller.selectedMonth.value ==
                                                'December') {
                                          controller.isThirty.value = false;
                                          controller.isThirtyOne.value = true;
                                        } else if (controller
                                          .selectedMonth.value ==
                                          'February' ||
                                      controller.selectedMonth.value ==
                                                'April' ||
                                            controller.selectedMonth.value ==
                                                'June' ||
                                            controller.selectedMonth.value ==
                                                'September' ||
                                            controller.selectedMonth.value ==
                                                'November') {
                                          controller.isThirty.value = true;
                                          controller.isThirtyOne.value = false;
                                        }
                                        Get.back();
                                      },
                                      child: Text(
                                        controller.monthList[index],
                                        style: const TextStyle(
                                            color: Colors.blue, fontSize: 20),
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: ScaleController.H * 0.02,
                                    // ),
                                  ],
                                );
                              },
                              physics: const BouncingScrollPhysics(),
                            )),
                      );
                    },
                    child: Container(
                        height: ScaleController.H * 0.06,
                        width: ScaleController.W * 0.4,
                        decoration: const BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Center(
                            child: Obx(() => Text(
                                  controller.selectedMonth.value,
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )))),
                  ),
                ],
              ),
              SizedBox(
                height: ScaleController.H * 0.02,
              ),
              SizedBox(
                height: ScaleController.H * 0.72,
                child: Obx(() => ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                            onTap: () {
                              controller.selectedDate.value = '${controller.thirtyOneDays[index]}';
                              Get.toNamed(RoutesManager.createEventRoute);
                            },
                            child: buildPickDateCard(
                              '${controller.selectedMonth}'.substring(0, 3),

                                      controller.isThirty.value == false &&
                                      controller.isThirtyOne.value == true
                                  ? controller.thirtyOneDays[index]
                                  : controller.isThirtyOne.value ==
                                              false &&
                                          controller.isThirty.value == true
                                      ? controller.thirtyDays[index]
                                      : 0,
                            ));
                      },
                      shrinkWrap: true,
                      itemCount:
                      controller.isThirty.value == false &&
                              controller.isThirtyOne.value == true
                          ? controller.thirtyOneDays.length
                          : controller.isThirtyOne.value == false &&
                                  controller.isThirty.value == true
                              ? controller.thirtyDays.length
                              : 0,
                      // controller.isFebruary.value == false
                      //     && controller.isFebruaryLeap.value == true
                      //     && controller.isThirty.value == false
                      //     && controller.isThirtyOne.value == false
                      //     ? controller.twentyNineDays.length
                      //     : controller.isFebruary.value == true
                      //     && controller.isFebruaryLeap.value == false
                      //     && controller.isThirty.value == false
                      //     && controller.isThirtyOne.value == false
                      //     ? controller.twentyEightDays.length : 0,
                      physics: const BouncingScrollPhysics(),
                    )),
              )
            ],
          ),
        ));
  }

  Column buildPickDateCard(String month, int index) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: ScaleController.W * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$index",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    month,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScaleController.H * 0.06,
              width: ScaleController.W * 0.07,
              child: VerticalDivider(
                color: Colors.grey[400],
                thickness: 3,
              ),
            ),
          ],
        ),
        SizedBox(
          height: ScaleController.H * 0.02,
        ),
        SizedBox(
            width: ScaleController.W,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScaleController.W * 0.04),
              child: Divider(
                color: Colors.grey[300],
                thickness: 2,
              ),
            ))
      ],
    );
  }
}
