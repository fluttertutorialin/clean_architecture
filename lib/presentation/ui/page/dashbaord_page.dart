import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../../core/route/route_name.dart';
import '../../../core/theme/color.dart';
import '../widget/form_button_component.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
            bottomNavigationBar: Row(children: [
              Expanded(child: _visitButtonWidget()),
              Expanded(child: _pickUpButtonWidget()),
            ]),
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                  stackedCardBackground(Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Container(
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        image: const DecorationImage(
                                            fit: BoxFit.fitHeight,
                                            image: NetworkImage(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCkAMBLJMV2zScXlokpLpjnWZ65ve6OHJ8vg&usqp=CAU')),
                                        boxShadow: [
                                          BoxShadow(
                                              spreadRadius: 1.0,
                                              color: Colors.deepOrange[700]!,
                                              blurRadius: 2)
                                        ])),
                                const SizedBox(width: 20),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Welcome to',
                                          style: TextStyle(
                                              color: Colors.white,
                                               fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 2.0),
                                      Text('Kamlesh',
                                          style: TextStyle(color: Colors.white60, fontSize: 15))
                                    ])
                              ]),
                              CircleAvatar(
                                backgroundColor: Colors.deepOrange,
                                  child: IconButton(
                                      icon: const Icon(LineIcons.history,
                                          size: 20,
                                          color: Colors.white),
                                      onPressed: () {}))
                            ]),
                        const SizedBox(height: 20),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange[700],
                                    borderRadius: BorderRadius.circular(14)),
                                child: const Text('4th December | 22 Days left',
                                    style: TextStyle(color: Colors.white))))
                      ]))),

                  const SizedBox(height: 20),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    ExpansionTile(
                        collapsedBackgroundColor: Colors.grey.withOpacity(0.1),
                        initiallyExpanded: true,
                        title: Text('Today',
                            style: context.textTheme.bodyText1!
                                .copyWith(fontSize: 14)),
                        children: <Widget>[
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('Vendor',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12))),
                            Expanded(
                                flex: 1,
                                child: Text('Listed',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12))),
                            Expanded(
                                flex: 0,
                                child: Text('Target',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12)))
                          ])),
                          const Divider(),
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('Active vendor',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('13',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('00',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 0,
                                child: Text('-12',
                                    style: context.textTheme.headline2!
                                        .copyWith(fontSize: 14)))
                          ])),
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('Inactive vendor',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('13',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('00',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 0,
                                child: Text('-12',
                                    style: context.textTheme.headline2!
                                        .copyWith(fontSize: 14)))
                          ])),
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('Listed device',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('13',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('00',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 0,
                                child: Text('-12',
                                    style: context.textTheme.headline2!
                                        .copyWith(fontSize: 14)))
                          ])),
                        ]),
                    const SizedBox(height: 10),
                    ExpansionTile(
                        collapsedBackgroundColor: Colors.grey.withOpacity(0.1),
                        title: Text('Average',
                            style: context.textTheme.bodyText1!
                                .copyWith(fontSize: 14)),
                        children: <Widget>[
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('Vendor',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12))),
                            Expanded(
                                flex: 1,
                                child: Text('Listed',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12))),
                            Expanded(
                                flex: 0,
                                child: Text('Target',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12)))
                          ])),
                          const Divider(),
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('Active vendor',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('13',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('00',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 0,
                                child: Text('-12',
                                    style: context.textTheme.headline2!
                                        .copyWith(fontSize: 14)))
                          ])),
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('Inactive vendor',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('13',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('00',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 0,
                                child: Text('-12',
                                    style: context.textTheme.headline2!
                                        .copyWith(fontSize: 14)))
                          ])),
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('Listed device',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('13',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('00',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 0,
                                child: Text('-12',
                                    style: context.textTheme.headline2!
                                        .copyWith(fontSize: 14)))
                          ])),
                        ]),
                    const SizedBox(height: 10),
                    ExpansionTile(
                        collapsedBackgroundColor: Colors.grey.withOpacity(0.1),
                        title: Text('Till date',
                            style: context.textTheme.bodyText1!
                                .copyWith(fontSize: 14)),
                        children: <Widget>[
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('Vendor',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12))),
                            Expanded(
                                flex: 1,
                                child: Text('Listed',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12))),
                            Expanded(
                                flex: 0,
                                child: Text('Target',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12)))
                          ])),
                          const Divider(),
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('Active vendor',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('13',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('00',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 0,
                                child: Text('-12',
                                    style: context.textTheme.headline2!
                                        .copyWith(fontSize: 14)))
                          ])),
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('Inactive vendor',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('13',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('00',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 0,
                                child: Text('-12',
                                    style: context.textTheme.headline2!
                                        .copyWith(fontSize: 14)))
                          ])),
                          ListTile(
                              title: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Text('Listed device',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('13',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 1,
                                child: Text('00',
                                    style: context.textTheme.headline5!
                                        .copyWith(fontSize: 14))),
                            Expanded(
                                flex: 0,
                                child: Text('-12',
                                    style: context.textTheme.headline2!
                                        .copyWith(fontSize: 14)))
                          ]))
                        ])
                  ])))
                ]))));
  }

  stackedCardBackground(Widget child) {
    return SizedBox(
      height: 186,
      child: Stack(
        children: [
          Positioned(
            left: 15,
            bottom: 8,
            height: 175,
            width: 310,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrange[800]?.withAlpha(100),
                  borderRadius: BorderRadius.circular(16)),
            )
          ),
          Positioned(
            left: 30,
            bottom: 0,
            height: 175,
            width: 280,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrange[800]?.withAlpha(60),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Container(
            height: 170,
            width: 340,
            decoration: BoxDecoration(
                color: Colors.deepOrange[800],
                borderRadius: BorderRadius.circular(16)),
            child: child,
          )
        ],
      ),
    );
  }

  _visitButtonWidget() => FormButtonComponent(
        onPressed: () {
          Get.toNamed(RouteName.listDeviceRoute);
        },
        color: Get.theme.primaryColor,
        text: Text('VISIT',
            style: Get.textTheme.headline2!
                .copyWith(color: whiteColor, fontSize: 14)),
      ).paddingSymmetric(vertical: 10.0, horizontal: 10.0);

  _pickUpButtonWidget() => FormButtonComponent(
        onPressed: () {
          Get.toNamed(RouteName.homeRoute);
        },
        color: Get.theme.primaryColor,
        text: Text('PICK UP',
            style: Get.textTheme.headline2!
                .copyWith(color: whiteColor, fontSize: 14)),
      ).paddingSymmetric(vertical: 10.0, horizontal: 10.0);
}
