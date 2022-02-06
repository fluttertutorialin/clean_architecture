import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../../core/assets/assets.dart';
import '../../../core/route/route_name.dart';
import '../../../core/theme/color.dart';
import '../widget/form_button_component.dart';
import '../widget/text_field_search_component.dart';

class NewDevicePage extends StatelessWidget {
  const NewDevicePage({Key? key}) : super(key: key);

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
                title: Text('Add new device',
                    style:
                        Get.textTheme.headline4!.copyWith(color: whiteColor))),
            body: Column(children: [
              Container(
                  color: Colors.grey.withOpacity(0.1),
                  padding: const EdgeInsets.all(15),
                  child: Column(children: [
                    Row(children: [
                      const Expanded(
                          child: TextFieldSearchComponent(
                              labelText: 'Find device')),
                      const SizedBox(width: 7.0),
                      Container(
                          width: 100,
                          height: 35,
                          padding: const EdgeInsets.only(
                              top: 3, bottom: 3, right: 5, left: 5),
                          decoration: const BoxDecoration(
                              color: whiteColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                              child: Text('FIND DEVICE',
                                  style: Get.textTheme.headline5!
                                      .copyWith(fontSize: 12))))
                    ]),
                    const SizedBox(height: 15),
                    Container(
                        height: 35,
                        padding: const EdgeInsets.only(
                            top: 3, bottom: 3, right: 5, left: 5),
                        decoration:  BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Center(
                            child: Text('GET THE MOBILE DETAIL FROM CAMERA',
                                style: Get.textTheme.headline5!
                                    .copyWith(fontSize: 12))))
                  ])),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
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
                                Text('Select make',
                                    style: Get.textTheme.bodyText2),
                                Text('No select make',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Select model',
                                    style: Get.textTheme.bodyText2),
                                Text('No select model',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Select ram',
                                    style: Get.textTheme.bodyText2),
                                Text('No select ram',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Select rom',
                                    style: Get.textTheme.bodyText2),
                                Text('No select rom',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Select color',
                                    style: Get.textTheme.bodyText2),
                                Text('No select color',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Select vendor',
                                    style: Get.textTheme.bodyText2),
                                Text('No select vendor',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Select stock',
                                    style: Get.textTheme.bodyText2),
                                Text('No select stock',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('rate', style: Get.textTheme.bodyText2),
                                Text('No select rate',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Vendor name',
                                    style: Get.textTheme.bodyText2),
                                Text('No select vendor name',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Invoice', style: Get.textTheme.bodyText2),
                                Text('No select invoice',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Box', style: Get.textTheme.bodyText2),
                                Text('No select box',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Charger', style: Get.textTheme.bodyText2),
                                Text('No select charger',
                                    style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('IMEI', style: Get.textTheme.bodyText2),
                                Text('Enter IMEI', style: Get.textTheme.caption)
                              ]).paddingAll(5.0),
                          Icon(LineIcons.angleDown,
                              size: 12, color: Get.theme.primaryColor).paddingAll(3)
                        ])),
                const SizedBox(height: 10),
                _addButtonWidget()
              ]).paddingAll(15)))
            ])));
  }

  _addButtonWidget() => FormButtonComponent(
        onPressed: () {
          Get.toNamed(RouteName.qrCodeScannerRoute);
        },
        color: Get.theme.primaryColor,
        text: Text('SUBMIT',
            style: Get.textTheme.headline2!
                .copyWith(color: whiteColor, fontSize: 14)),
      ).paddingSymmetric(vertical: 10.0);
}
