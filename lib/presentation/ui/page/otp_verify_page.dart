import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/theme/color.dart';
import '../widget/form_button_component.dart';
import '../widget/text_field_component.dart';

class OtpVerifyPage extends StatelessWidget {
  OtpVerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(height: Get.height / 4),
      Text('Verify phone',
          style: Get.textTheme.headline5!
              .copyWith(color: Get.theme.primaryColor, fontSize: 22)),
      const SizedBox(height: 50),
      Text('We have sent OTP on 7990971929 mobile number',
          style: Get.textTheme.caption!.copyWith(fontSize: 14)),
      const SizedBox(height: 15),
      const TextFieldComponent(labelText: 'OTP'),
      const SizedBox(height: 5),
      _optVerifyButtonWidget,
      Align(
          alignment: Alignment.topRight,
          child: Wrap(children: [
            Text("Didn't receive code?",
                style: Get.textTheme.caption!.copyWith(fontSize: 14)),
            const SizedBox(width: 10),
            Text('Request again',
                style: Get.textTheme.headline2!.copyWith(fontSize: 14))
          ])),
    ]).paddingAll(15)));
  }

  final _optVerifyButtonWidget = FormButtonComponent(
    onPressed: () {},
    color: Get.theme.primaryColor,
    text: Text('SUBMIT',
        style:
            Get.textTheme.headline2!.copyWith(color: whiteColor, fontSize: 14)),
  ).paddingSymmetric(vertical: 10.0);
}
