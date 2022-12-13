import 'package:get/get.dart';


class PickDateController extends GetxController{
 var selectedYear  = '2022'.obs;
 var selectedMonth  = 'November'.obs;
 // var isFebruary = false.obs;
 // var isFebruaryLeap = false.obs;
 var isThirty = true.obs;
 var isThirtyOne = false.obs;
 var selectedDate = ''.obs;
  List yearList = [
    '2016', '2017', '2018', '2019', '2020', '2021', '2022', '2023', '2024', '2025',
  ];
  List monthList = [
    'January', 'February', 'March', 'April', 'May', 'June', 'July',
    'August', 'September', 'October', 'November', 'December',
  ];

  List thirtyOneDays = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31];
  List thirtyDays = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30];
  List twentyNineDays = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29];
  List twentyEightDays = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28];

}