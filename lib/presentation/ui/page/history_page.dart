/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/assets/assets.dart';
import '../../controller/controller.dart';
import '../../../core/theme/color.dart';
import '../widget/form_button_component.dart';

class HistoryPage extends GetView<VisitHistoryController> {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Visit History',
                style: Get.textTheme.headline4!.copyWith(color: whiteColor)),
            backgroundColor: Get.theme.primaryColor,
            leading: IconButton(
                icon: const Icon(arrowLefAndroidIcon), onPressed: () => Get.back()),
            elevation: 0),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Card(
                  child: ListTile(
                      onTap: () {},
                      leading: const Icon(dateIcon),
                      trailing: Icon(selectIcon,
                          color: context.theme.colorScheme.secondary),
                      title: Text('select start date',
                          style: context.textTheme.headline6!
                              .merge(const TextStyle(fontSize: 12))),
                      subtitle: Text(controller.startDateTime,
                          style: context.textTheme.bodyText1!
                              .merge(const TextStyle(fontSize: 14))))),
              Card(
                  child: ListTile(
                      onTap: () {},
                      leading: const Icon(dateIcon),
                      trailing: Icon(selectIcon,
                          color: context.theme.colorScheme.secondary),
                      title: Text('Select end date',
                          style: context.textTheme.headline6!
                              .merge(const TextStyle(fontSize: 12))),
                      subtitle: Text(controller.endDateTime,
                          style: context.textTheme.bodyText1!
                              .merge(const TextStyle(fontSize: 14))))),
              FormButtonComponent(
                onPressed: () {},
                color: Get.theme.colorScheme.secondary,
                text: Text('Submit',
                    style: Get.textTheme.headline2!
                        .copyWith(color: whiteColor, fontSize: 14)),
              ).paddingSymmetric(vertical: 10.0, horizontal: 0.0)
            ])));
  }
}
