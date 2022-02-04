import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/controller.dart';
import '../../../core/route/route_name.dart';
import '../../../core/theme/color.dart';
import '../widget/form_button_component.dart';
import '../widget/text_field_component.dart';

class LoginUserNamePage extends GetView<LoginController> {
  const LoginUserNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(height: Get.height / 4),
      Text('Mobex Procurement',
          style: Get.textTheme.headline5!
              .copyWith(color: Get.theme.primaryColor, fontSize: 22)),
      const SizedBox(height: 50),
      Text('Please sign in continues...',
          style: Get.textTheme.caption!.copyWith(fontSize: 14)),
      const SizedBox(height: 15),
      TextFieldComponent(
          labelText: 'Username', controller: controller.userNameController),
      const SizedBox(height: 15),
      TextFieldComponent(
          labelText: 'Password', controller: controller.passwordController),
      const SizedBox(height: 5),
      _loginButtonWidget(),
      Align(
          alignment: Alignment.topRight,
          child: InkWell(
              child: Text('Login with mobile',
                      style: Get.textTheme.headline3!.copyWith(fontSize: 14))
                  .paddingOnly(top: 5, bottom: 5, left: 3, right: 3),
              onTap: () {
                Get.toNamed(RouteName.loginMobileRoute);
              }))
    ]).paddingAll(15)));
  }

  _loginButtonWidget() => FormButtonComponent(
        onPressed: () => controller.validation(),
        color: Get.theme.primaryColor,
        text: Text('SUBMIT',
            style: Get.textTheme.headline2!
                .copyWith(color: whiteColor, fontSize: 14)),
      ).paddingSymmetric(vertical: 10.0);
}
