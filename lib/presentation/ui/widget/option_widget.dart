/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:vendor/core/constant/constant.dart';
import '../../../core/assets/assets.dart';
import '../../../core/theme/color.dart';

class OptionWidget extends StatelessWidget {
  final Function()? doneOnClick, postponeOnClick, cancelOnClick;
  final String? doneButtonText, postponeButtonText, mobile, address;
  final bool? isVisibleSubmit;
  final ListTypeEnum? listTypeEnum;

  const OptionWidget(
      {this.doneOnClick,
      this.postponeOnClick,
      this.cancelOnClick,
      this.doneButtonText,
      this.postponeButtonText,
      this.mobile,
      this.address,
      this.isVisibleSubmit = true,
      this.listTypeEnum,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        InkWell(
            onTap: () {
              MapsLauncher.launchQuery(address!);
            },
            customBorder: const CircleBorder(),
            child: const Padding(
                padding: EdgeInsets.all(5), child: Icon(mapIcon))),
        const SizedBox(width: 5.0),
        InkWell(
            onTap: () async {
              await FlutterPhoneDirectCaller.callNumber('$mobile');
            },
            customBorder: const CircleBorder(),
            child: const Padding(
                padding: EdgeInsets.all(5), child: Icon(callIcon)))
      ]),
      isVisibleSubmit!
          ? Row(children: [
              InkWell(
                  onTap: doneOnClick,
                  customBorder: const CircleBorder(),
                  child: _optionName(
                      name: doneButtonText!.toUpperCase(),
                      textStyle: context.textTheme.bodyText1!
                          .copyWith(color: doneButtonBgColor, fontSize: 12))),
              const SizedBox(width: 10.0),
              InkWell(
                  onTap: postponeOnClick,
                  customBorder: const CircleBorder(),
                  child: _optionName(
                      name: postponeButtonText!.toUpperCase(),
                      textStyle: context.textTheme.bodyText1!.copyWith(
                          color: postponeButtonBgColor, fontSize: 12))),
              if (listTypeEnum == ListTypeEnum.returnMobile) ...[
                const SizedBox(width: 10.0),
                InkWell(
                    onTap: cancelOnClick,
                    customBorder: const CircleBorder(),
                    child: _optionName(
                        name: ' cancel '.toUpperCase(),
                        textStyle: context.textTheme.bodyText1!.copyWith(
                            color: cancelButtonBgColor, fontSize: 12)))
              ]
            ])
          : const SizedBox()
    ]);
  }

  _optionName({required String name, required TextStyle textStyle}) =>
      Container(
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(5),
          child: Text(name, style: textStyle));
}
