/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:get/get.dart';
import '../controller/controller.dart';

class VisitHistoryBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => VisitHistoryController());
}
