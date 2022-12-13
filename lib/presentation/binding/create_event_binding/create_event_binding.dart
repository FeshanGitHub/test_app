import 'package:get/get.dart';
import 'package:test_app/presentation/controller/create_event_controller/create_event_controller.dart';


class CreateEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CreateEventController());
  }
}
