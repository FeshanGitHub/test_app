import 'package:get/get.dart';
import 'package:test_app/presentation/binding/create_event_binding/create_event_binding.dart';
import 'package:test_app/presentation/view/pick_date_screen/pick_date_screen.dart';
import '../binding/pick_date_binding/pick_date_binding.dart';
import '../view/create_event_screen/create_event_screen.dart';


class RoutesManager {
  static String pickDateRoute = "/pickDateRoute";
  static String createEventRoute = "/createEventRoute";


  static String getPickDateRoute() => pickDateRoute;
  static String getCreateEventRoute() => createEventRoute;

  static List<GetPage> routes = [
    GetPage(
        name: pickDateRoute,
        page: () => const PickDateScreen(),
        binding: PickDateBinding()),
    GetPage(
        name: createEventRoute,
        page: () => const CreateEventScreen(),
        binding: CreateEventBinding()),
  ];
}
