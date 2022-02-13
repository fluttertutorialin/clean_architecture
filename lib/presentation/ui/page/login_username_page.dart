import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../widget/widget.dart';
import '../../controller/controller.dart';

class LoginUserNamePage extends GetView<LoginController> {
  const LoginUserNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Form(
                key: controller.formKey,
                child: Column(children: [
                  SizedBox(height: Get.height / 4),
                  Text('Clean Architecture',
                      style: Get.textTheme.headline5!.copyWith(
                          color: Get.theme.primaryColor, fontSize: 22)),
                  const SizedBox(height: 50),
                  Text('Please sign in continues...',
                      style: Get.textTheme.caption!.copyWith(fontSize: 14)),
                  const SizedBox(height: 15),
                  TextFieldComponent(
                      labelText: 'Username',
                      focusNode: controller.userNameFocusNode,
                      textInputAction: TextInputAction.next,
                      maxLength: 50,
                      controller: controller.userNameController),
                  const SizedBox(height: 15),
                  Obx(() => TextFieldComponent(
                      labelText: 'Password',
                      focusNode: controller.passwordFocusNode,
                      textInputAction: TextInputAction.done,
                      obscureText: controller.isPasswordVisible,
                      maxLength: 10,
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.passwordVisibleChange(
                                controller.isPasswordVisible);
                          },
                          icon: Icon(controller.isPasswordVisible
                              ? LineIcons.eyeSlashAlt
                              : LineIcons.eyeAlt)),
                      controller: controller.passwordController)),
                  const SizedBox(height: 15),
                  _loginButtonWidget(context),
                  const SizedBox(height: 15),
                  Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                          child: Text('Login with mobile',
                                  style: Get.textTheme.headline3!
                                      .copyWith(fontSize: 14))
                              .paddingOnly(
                                  top: 5, bottom: 5, left: 3, right: 3),
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            controller.loginWithMobileNavigation();
                          }))
                ])).paddingAll(15)));
  }

  _loginButtonWidget(BuildContext? context) => FormIconLoadingComponent(
        height: 45,
        elevation: 0,
        spaceBetween: 20,
        color: Get.theme.primaryColor,
        iconColor: Colors.white,
        valueColor: Get.theme.primaryColor,
        errorColor: const Color(0xffe0333c),
        loaderSize: 45,
        successColor: Get.theme.primaryColor,
        child: const Text('SUBMIT'),
        iconData: LineIcons.lock,
        borderRadius: 20.0,
        failedIcon: LineIcons.infoCircle,
        onPressed: () {
          FocusScope.of(context!).requestFocus(FocusNode());
          controller.loginValidate();
        },
        successIcon: LineIcons.check,
        controller: controller.loginButtonController,
      );
}
