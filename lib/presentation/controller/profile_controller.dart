import 'package:get/get.dart';
import '../../core/route/route_name.dart';
import '../../domain/usecases/usecases.dart';

class ProfileController extends GetxController {
  //CONSTRUCTOR
  final ProfileGet _profileGet;
  ProfileController(this._profileGet);

  final _userNameRx = RxString('');
  get userName => _userNameRx.value;

  final _loginInTimeRx = RxString('');
  get loginInTime => _loginInTimeRx.value;

  @override
  void onInit() {
    super.onInit();
    _userNameRx.value = _profileGet.userNameReadSession();
    _loginInTimeRx.value = _profileGet.loginInTimeReadSession();
  }

  logout(){
    _profileGet.logout();
    Get.offAllNamed(RouteName.loginUserNameRoute);
  }
}
