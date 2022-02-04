import 'package:get/get.dart';
import '../controller/controller.dart';

class GlobalBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SettingsController());
  }
}