import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/route/route_name.dart';
import '../../data/usecases/login_remote.dart';
import '../../core/extension/extension.dart';

class LoginController extends GetxController {
  //CONSTRUCTOR
  final LoginRemote _loginRemote;
  LoginController(this._loginRemote);

  //INIT AND GET
  late TextEditingController passwordController = TextEditingController();
  String get password => passwordController.text;

  late TextEditingController userNameController = TextEditingController();
  String get userName => userNameController.text;

  //VALIDATION
  final formKey = GlobalKey<FormState>();

  Future<void> _loginGetData() async {
    final loginEither = await _loginRemote
        .call(LoginParameter(userName: userName, password: password));

    loginEither.fold(
      (error) {
        toast(title: 'Login', message: error.message!);
      },
      (response) async {
        var loginDetail = response.loginDetailList?[0];

        //SESSION STORE
        _loginRemote.userNameWriteSession(loginDetail!.userName!);
        _loginRemote.loginInTimeWriteSession('${DateTime.now()}');
        _loginRemote.isLoginWriteSession(true);

        //LOGIN SUCCESS NAVIGATION
        Get.offAllNamed(RouteName.dashboardRoute);
      },
    );
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

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
