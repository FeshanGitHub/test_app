import 'package:get/get.dart';
import 'package:test_app/presentation/controller/pick_date_controller/pick_date_controller.dart';

class PickDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PickDateController());
  }
}
