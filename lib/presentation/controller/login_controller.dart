import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ui/widget/widget.dart';
import '../../core/constant/constant.dart';
import '../../core/route/route_name.dart';
import '../../data/usecases/login_remote.dart';
import '../../core/extensions/extensions.dart';

class LoginController extends GetxController {
  //CONSTRUCTOR
  final LoginRemote _loginRemote;
  LoginController(this._loginRemote);

  //FORM KEY USE FOR VALIDATION
  final formKey = GlobalKey<FormState>();

  //TEXT EDITING CONTROLLER INIT AND GET
  late TextEditingController passwordController = TextEditingController();
  String get password => passwordController.text;

  late TextEditingController userNameController = TextEditingController();
  String get userName => userNameController.text;

  final IconButtonController loginButtonController = IconButtonController();

  final FocusNode userNameFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  //PASSWORD VISIBLE OR NOT
  final RxBool _isPasswordVisibleRx = RxBool(false);
  bool get isPasswordVisible => _isPasswordVisibleRx.value;

  Future<void> _loginGetData() async {
    loginButtonController.showProgress();

    final loginEither = await _loginRemote
        .call(LoginParameter(userName: userName, password: password));

    loginEither.fold((error) {
      //ERROR RESPONSE
      loginButtonController.error();
      Future.delayed(const Duration(seconds: 1), () {
        loginButtonController.reset();
      });

      passwordController.clear();

      switch (error.code) {
        case notFound:
          toast(title: error.title, message: notFoundMessage);
          break;
        default:
          toast(title: error.title, message: error.message!);
      }
    }, (response) async {
      loginButtonController.success();
      loginButtonController.reset();

      //SUCCESS RESPONSE
      if (response.loginDetailList!.isNotEmpty) {
        var loginDetail = response.loginDetailList?.first;

        //SESSION STORE
        _loginRemote.userNameWriteSession(loginDetail!.userName!);
        _loginRemote.loginInTimeWriteSession('${DateTime.now()}');
        _loginRemote.isLoginWriteSession(true);

        //LOGIN SUCCESS NAVIGATION
        Get.offAllNamed(RouteName.dashboardRoute);
      }
    });
  }

  passwordVisibleChange(bool value) {
    _isPasswordVisibleRx.value = !value;
  }

  //VALIDATION
  loginValidate() {
    switch (formKey.currentState!.validate()) {
      case true:
        formKey.currentState!.save();
        _loginGetData();
        break;
    }
  }

  loginWithMobileNavigation() {
    FocusScope.of(Get.context!).requestFocus(FocusNode());
    Get.toNamed(RouteName.loginMobileRoute);
  }

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
