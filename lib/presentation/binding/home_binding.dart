/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:get/get.dart';
import '../controller/controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(Get.find()));
    Get.lazyPut(() => TotalRecordController(), fenix: false);

    Get.lazyPut(() => PickUpController(Get.find()), fenix: false);

  }
}
