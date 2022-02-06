import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/route/route_name.dart';
import '../../domain/usecases/usecases.dart';
import '../../core/extension/extension.dart';

class LoginController extends GetxController {
  //CONSTRUCTOR
  final LoginGet _loginGet;
  LoginController(this._loginGet);

  //INIT AND GET
  late TextEditingController passwordController = TextEditingController();
  String get password => passwordController.text;

  late TextEditingController userNameController = TextEditingController();
  String get userName => userNameController.text;

  void _loginGetData() {
    _loginGet
        .login(
            parameter: LoginParameter(userName: userName, password: password))
        .then((value) {
      var loginDetail = value.loginDetailList?[0];

      //SESSION STORE
      _loginGet.userNameWriteSession(loginDetail!.userName!);
      _loginGet.loginInTimeWriteSession('${DateTime.now()}');
      _loginGet.isLoginWriteSession(true);

      //LOGIN SUCCESS NAVIGATION
      Get.offAllNamed(RouteName.dashboardRoute);
    }).catchError((error) {
      toast(title: 'Login', message: error.errorLanguageEntity!.defaultLanguage);
    });
  }

  //VALIDATION
  void validation() {
    _loginGetData();
  }

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
