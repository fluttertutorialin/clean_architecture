/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:get/get.dart';

class TotalRecordController extends GetxController {
  static TotalRecordController get to => Get.find();

  final RxList _selectTabTotalDataRx = RxList([3]);
  List get selectTabTotalData => _selectTabTotalDataRx;

  @override
  void onInit() {
    super.onInit();
    _selectTabTotalDataRx.value = [00, 00, 00];
  }

  totalData(int index, int length) {
    _selectTabTotalDataRx[index] = length;
  }
}
