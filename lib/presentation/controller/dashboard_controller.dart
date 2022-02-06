import 'package:get/get.dart';
import '../../domain/usecases/usecases.dart';

class DashboardController extends GetxController {
  //CONSTRUCTOR
  final DashboardGet _dashBoardGet;
  DashboardController(this._dashBoardGet);

  var userNameRx = RxString('');
  get userName => userNameRx.value;

  @override
  void onInit() {
    super.onInit();
    userNameRx.value = _dashBoardGet.userNameReadSession();
  }
}
