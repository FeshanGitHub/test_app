import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/presentation/controller/create_event_controller/create_event_controller.dart';
import 'package:test_app/scale_controller.dart';

class CreateEventScreen extends GetView<CreateEventController> {
  const CreateEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Event Detail'),
            titleTextStyle: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            centerTitle: true,
            leading: Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Text(
                  'Back',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            leadingWidth: ScaleController.W * 0.2,
            toolbarHeight: ScaleController.H * 0.1,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Container(
              height: ScaleController.H,
              width: ScaleController.W,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScaleController.W * 0.05),
                    child: Column(
                      children: [
                        SizedBox(
                          height: ScaleController.H * 0.025,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Date & Time',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: ScaleController.W * 0.1,
                            ),
                            SizedBox(
                              width: ScaleController.W * 0.21,
                              child: Obx(() => TextFormField(
                                    textAlign: TextAlign.center,
                                    readOnly: true,
                                    onTap: () {
                                      controller.chooseStartDateTime();
                                    },
                                    onChanged: (value) {
                                      controller.selectedStartTime.value;
                                    },
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            decimal: false),
                                    controller: controller.timeController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              ScaleController.W * 0.02),
                                          borderSide: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              ScaleController.W * 0.02),
                                          borderSide: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2))),
                                      hintText: controller
                                                  .selectedStartTime.value.hour ==
                                              TimeOfDay.now().hour
                                          ? 'HH:MM'
                                          : '${controller.selectedStartTime.value.hour.toString().padLeft(2, '0')}:${controller.selectedStartTime.value.minute.toString().padLeft(2, '0')}',
                                      hintStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: controller.selectedStartTime
                                                      .value.hour ==
                                                  TimeOfDay.now().hour
                                              ? Colors.black.withOpacity(0.5)
                                              : Colors.black),
                                    ),
                                    autofocus: false,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )),
                            ),
                            SizedBox(
                              width: ScaleController.W * 0.02,
                            ),
                            Text(
                              '${controller.pickDateController.selectedDate}-${controller.pickDateController.selectedMonth.toString().substring(0, 3)}-${controller.pickDateController.selectedYear}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: ScaleController.H * 0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Title',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: ScaleController.W * 0.56,
                              child: TextFormField(
                                controller: controller.titleController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              ScaleController.W * 0.02)),
                                      borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.2),
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              ScaleController.W * 0.02)),
                                      borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.2),
                                      )),
                                ),
                                autofocus: false,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScaleController.H * 0.025,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Description',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScaleController.H * 0.01,
                        ),
                        TextFormField(
                          maxLines: 5,
                          keyboardType: TextInputType.text,
                          controller: controller.descriptionController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black.withOpacity(0.1),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(ScaleController.W * 0.02)),
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2),
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(ScaleController.W * 0.02)),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )),
                          ),
                          autofocus: false,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: ScaleController.W,
                    height: ScaleController.H * 0.075,
                    decoration: const BoxDecoration(color: Colors.indigo),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
