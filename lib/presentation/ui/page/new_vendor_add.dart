import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../../core/assets/icon.dart';
import '../../../core/theme/color.dart';
import '../widget/form_button_component.dart';
import '../widget/text_field_component.dart';

class NewVendorAddPage extends StatelessWidget {
  const NewVendorAddPage({Key? key}) : super(key: key);

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
                title: Text('Add new dealer',
                    style:
                        Get.textTheme.headline4!.copyWith(color: whiteColor))),
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text('Address 1', style: Get.textTheme.caption),
                  const SizedBox(height: 3),
                  const TextFieldComponent(labelText: 'Address 1'),
                  const SizedBox(height: 15),
                  Text('Address 2', style: Get.textTheme.caption),
                  const SizedBox(height: 3),
                  const TextFieldComponent(labelText: 'Address 2'),
                  const SizedBox(height: 15),
                  Text('Address 3', style: Get.textTheme.caption),
                  const SizedBox(height: 3),
                  const TextFieldComponent(labelText: 'Address 3'),
                  const SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Select area',
                                      style: Get.textTheme.bodyText2),
                                  Text('No select area',
                                      style: Get.textTheme.caption)
                                ]).paddingAll(5.0),
                            Icon(LineIcons.angleDown,
                                size: 12, color: Get.theme.primaryColor).paddingAll(3)
                          ])),
                  const SizedBox(height: 15),
                  Text('Pin code', style: Get.textTheme.caption),
                  const SizedBox(height: 3),
                  const TextFieldComponent(labelText: 'Pin code'),
                  const SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Select state',
                                      style: Get.textTheme.bodyText2),
                                  Text('No select state',
                                      style: Get.textTheme.caption)
                                ]).paddingAll(5.0),
                            Icon(LineIcons.angleDown,
                                size: 12, color: Get.theme.primaryColor).paddingAll(3)
                          ])),
                  const SizedBox(height: 15),
                  Text('City', style: Get.textTheme.caption),
                  const SizedBox(height: 3),
                  const TextFieldComponent(labelText: 'City'),
                  const SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Select country',
                                      style: Get.textTheme.bodyText2),
                                  Text('No select country',
                                      style: Get.textTheme.caption)
                                ]).paddingAll(5.0),
                            Icon(LineIcons.angleDown,
                                size: 12, color: Get.theme.primaryColor).paddingAll(3)
                          ])),
                  const SizedBox(height: 15),
                  Text('Shop photo', style: Get.textTheme.caption),
                  const SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Select biker',
                                      style: Get.textTheme.bodyText2),
                                  Text('No select biker',
                                      style: Get.textTheme.caption)
                                ]).paddingAll(5.0),
                            Icon(LineIcons.angleDown,
                                size: 12, color: Get.theme.primaryColor).paddingAll(3)
                          ])),
                  _addButtonWidget()
                ]).paddingAll(15))));
  }

  _addButtonWidget() => FormButtonComponent(
        onPressed: () {},
        color: Get.theme.primaryColor,
        text: Text('SUBMIT',
            style: Get.textTheme.headline2!
                .copyWith(color: whiteColor, fontSize: 14)),
      ).paddingSymmetric(vertical: 10.0);
}
