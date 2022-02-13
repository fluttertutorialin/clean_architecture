import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/assets/icon.dart';
import '../../../core/route/route_name.dart';
import '../../../core/theme/color.dart';
import '../widget/form_button_component.dart';
import '../widget/text_field_component.dart';

class LoginMobilePage extends StatelessWidget {
  const LoginMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            leading: IconButton(
                icon: Icon(arrowLefAndroidIcon, color: Get.theme.hintColor),
                onPressed: () => Get.back()),
            elevation: 0),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: Get.height / 10),
          Text('Clean Architecture',
              style: Get.textTheme.headline5!
                  .copyWith(color: Get.theme.primaryColor, fontSize: 22)),
          const SizedBox(height: 50),
          Text('Please sign in continues...',
              style: Get.textTheme.caption!.copyWith(fontSize: 14)),
          const SizedBox(height: 15),
          const TextFieldComponent(labelText: 'Mobile'),
          const SizedBox(height: 5),
          _submitButtonWidget(),
          Align(
              alignment: Alignment.topRight,
              child: InkWell(
                  child: Text('Back',
                          style:
                              Get.textTheme.headline3!.copyWith(fontSize: 14))
                      .paddingOnly(top: 5, bottom: 5, left: 3, right: 3),
                  onTap: () {
                    Get.back();
                  }))
        ]).paddingAll(15)));
  }

  _submitButtonWidget() => FormButtonComponent(
        onPressed: () {
          Get.toNamed(RouteName.otpVerifyRoute);
        },
        color: Get.theme.primaryColor,
        text: Text('SUBMIT',
            style: Get.textTheme.headline2!
                .copyWith(color: whiteColor, fontSize: 14)),
      ).paddingSymmetric(vertical: 10.0);
}
