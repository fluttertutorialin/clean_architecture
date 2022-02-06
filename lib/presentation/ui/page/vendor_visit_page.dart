import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../widget/form_button_component.dart';
import '../widget/text_field_component.dart';
import '../../../core/assets/assets.dart';
import '../../../core/theme/color.dart';

class VendorVisitPage extends StatelessWidget {
  const VendorVisitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                    icon: const Icon(arrowLefAndroidIcon),
                    onPressed: () => Get.back()),
                backgroundColor: Get.theme.primaryColor,
                elevation: 0,
                title: Text('Vendor visit',
                    style:
                        Get.textTheme.headline4!.copyWith(color: whiteColor))),
            body: Column(children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(LineIcons.user,
                              size: 18, color: Get.theme.focusColor),
                          const SizedBox(width: 7.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Select vendor',
                                    style: context.textTheme.bodyText2),
                                Text('No select vendor',
                                    style: context.textTheme.caption)
                              ]).paddingAll(5.0)
                        ])
                      ])),
              const SizedBox(height: 10),
              const TextFieldComponent(
                  labelText: 'Feedback', maxLines: 3, minLines: 3),
              FormButtonComponent(
                onPressed: () {},
                color: Get.theme.colorScheme.secondary,
                text: Text('Submit',
                    style: Get.textTheme.headline2!
                        .copyWith(color: whiteColor, fontSize: 14)),
              ).paddingSymmetric(vertical: 10.0, horizontal: 0.0)
            ]).paddingAll(10)));
  }
}
