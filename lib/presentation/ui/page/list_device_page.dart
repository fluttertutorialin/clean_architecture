import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../widget/category_list_item.dart';
import '../../../core/assets/assets.dart';
import '../../../core/route/route_name.dart';
import '../../../core/theme/color.dart';

class ListDevicePage extends StatelessWidget {
  const ListDevicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                    icon: const Icon(arrowLefAndroidIcon),
                    onPressed: () => Get.back()),
                actions: [
                  PopupMenuButton(
                      onSelected: (result) {
                        //RESULT IT GIVES THE VALUE WHICH IS SELECTED
                        switch (result) {
                          case 1:
                            Get.toNamed(RouteName.newVendorAddRoute);
                            break;

                          case 2:
                            Get.toNamed(RouteName.newDeviceAddRoute);
                            break;

                          case 3:
                            Get.toNamed(RouteName.vendorVisitRoute);
                            break;
                        }
                      },
                      itemBuilder: (context) => [
                            PopupMenuItem(
                                child: Text('Add new dealer',
                                    style: context.textTheme.headline1!
                                        .copyWith(fontSize: 14)),
                                value: 1),
                            PopupMenuItem(
                                child: Text('Add new device',
                                    style: context.textTheme.headline1!
                                        .copyWith(fontSize: 14)),
                                value: 2),
                            PopupMenuItem(
                                child: Text('Vendor visit',
                                    style: context.textTheme.headline1!
                                        .copyWith(fontSize: 14)),
                                value: 3)
                          ])
                ],
                backgroundColor: Get.theme.primaryColor,
                elevation: 0,
                title: Text('Listing',
                    style:
                        Get.textTheme.headline4!.copyWith(color: whiteColor))),
            bottomNavigationBar: Container(
                padding: const EdgeInsets.all(10),
                height: 60,
                color: Colors.grey.withOpacity(0.1),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SELECT ALL',
                              style: Get.textTheme.headline3!
                                  .copyWith(fontSize: 14))
                          .paddingAll(8),
                      Row(children: [
                        InkWell(
                            onTap: () {
                              _soldAvailableAll(context, staus: 'sold all');
                            },
                            child: Container(
                                width: 80,
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 3, right: 5, left: 5),
                                decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.1),
                                    border: Border.all(color: Colors.red),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15))),
                                child: Text('SOLD ALL',
                                    textAlign: TextAlign.center,
                                    style: Get.textTheme.headline1!.copyWith(
                                        fontSize: 12, color: Colors.red)))),
                        const SizedBox(width: 10.0),
                        InkWell(
                            onTap: () {
                              _soldAvailableAll(context,
                                  staus: 'available all');
                            },
                            child: Container(
                                width: 110,
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 3, right: 5, left: 5),
                                decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.1),
                                    border: Border.all(color: Colors.green),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15))),
                                child: Text('AVAILABLE ALL',
                                    textAlign: TextAlign.center,
                                    style: Get.textTheme.bodyText1!.copyWith(
                                        fontSize: 12, color: Colors.green)))),
                      ])
                    ])),
            body: Column(children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.deepOrange.withOpacity(0.23),
                            offset: const Offset(0, 10),
                            blurRadius: 50)
                      ]),
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
                        ]),
                        Row(children: [
                          InkWell(
                              customBorder: const CircleBorder(),
                              child: CircleAvatar(
                                  backgroundColor: Get.theme.primaryColor,
                                  radius: 15,
                                  child: const Icon(LineIcons.searchLocation,
                                      size: 18, color: whiteColor)),
                              onTap: () {}),
                          const SizedBox(width: 5.0)
                        ])
                      ])),
              const SizedBox(height: 10),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  height: 46,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.deepOrange.withOpacity(0.23),
                            offset: const Offset(0, 10),
                            blurRadius: 50)
                      ]),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(LineIcons.search, color: Colors.deepOrange),
                        const SizedBox(width: 10.0),
                        Expanded(
                            child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none)))
                      ])),
              const SizedBox(height: 15),
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return CategoryListItem(
                            key: PageStorageKey<String>('ListDevice$index'),
                            restorationId: 'home_material_category_list',
                            initiallyExpanded: false,
                            onTapAvailable: () {
                              Get.toNamed(RouteName.qrCodeScannerRoute);
                            },
                            onTapSold: () {},
                            onTapEdit: (shouldOpenList) {});
                      }))
            ])));
  }

  _soldAvailableAll(BuildContext context, {String? staus}) {
    Get.dialog(CupertinoAlertDialog(
        title: Text(staus!.toUpperCase(),
            style: Get.textTheme.headline5!.copyWith(fontSize: 12)),
        content: Text('Are you sure $staus mobile?',
            style: Get.textTheme.bodyText1!),
        actions: <Widget>[
          CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                Get.back();
              },
              child: Text('CANCEL',
                  style: Get.textTheme.headline6!.copyWith(fontSize: 14))),
          CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {},
              child: Text(staus.toUpperCase(),
                  style: Get.textTheme.headline5!.copyWith(fontSize: 14)))
        ]));
  }
}
