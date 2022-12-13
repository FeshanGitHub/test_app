import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/presentation/controller/pick_date_controller/pick_date_controller.dart';


class CreateEventController extends GetxController{
  TextEditingController timeController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  var selectedStartTime = TimeOfDay.now().obs;
  PickDateController pickDateController = Get.put(PickDateController());

  chooseStartDateTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: Get.context!,
      initialTime: selectedStartTime.value,
      initialEntryMode: TimePickerEntryMode.dial,
      cancelText: 'Close',
      confirmText: 'Confirm',
      helpText: 'Select Time',
    );
    if (pickedTime != null) {
      selectedStartTime.value = pickedTime;
    } else {
      return null;
    }
  }

}