/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/constant.dart';
import '../../../core/assets/assets.dart';
import '../../../core/theme/color.dart';
import '../widget/itemview/customer_detail_itemview.dart';
import '../widget/option_widget.dart';
import '../../controller/controller.dart';

class PickUpPage extends GetView<PickUpController> {
  PickUpPage({Key? key}) : super(key: key);

  final refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        key: refreshKey,
        color: loadingColor,
        onRefresh: () async {
          refreshKey.currentState!.show();
        },
        child: SafeArea(
            top: false,
            bottom: false,
            child: Builder(builder: (context) {
              return CustomScrollView(slivers: [
                SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
                SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, top: 1, bottom: 1),
                      child: Card(
                          child: Container(
                              margin: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CustomerDetailItemView(
                                        dateTime: '',
                                        inquiryUniqueId: '000001',
                                        customerName: 'Lakhani kamlesh',
                                        mobileModel: 'MI',
                                        mobileBrand: 'A2',
                                        address:
                                            '4th Floor/A-WING, SHASHWAT BUSINESS PARK, Rakhial Rd, opp. SOMA TEXTILE, Ahmedabad, Gujarat 380023'),
                                    OptionWidget(
                                        mobile: '9586331823',
                                        address: 'Address',
                                        postponeButtonText: ' Postpone ',
                                        doneButtonText: ' Done ',
                                        listTypeEnum: ListTypeEnum.pickUpMobile,
                                        doneOnClick: () {
                                          _pickUpDoneDialog(context,
                                              customerName: 'Lakhani kamlesh',
                                              inquiryUniqueId: 000000001);
                                        },
                                        postponeOnClick: () {},
                                        cancelOnClick: () {})
                                  ]))));
                }, childCount: 10))
              ]);
            })));
  }

  _pickUpDoneDialog(BuildContext context,
      {String? customerName, required int inquiryUniqueId}) {
    Get.dialog(CupertinoAlertDialog(
        title: Text(customerName!,
            style: Get.textTheme.headline5!.copyWith(fontSize: 12)),
        content: Column(children: [
          Text('Are you sure pick up done?', style: Get.textTheme.bodyText1!),
          const SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
                child: Row(children: [
                  const Icon(mobileQcSelectIcon),
                  const SizedBox(width: 3),
                  Text('QC pass',
                      style: Get.textTheme.bodyText1!.copyWith(fontSize: 12))
                ]),
                onTap: () {}),
            const SizedBox(width: 10),
            GestureDetector(
                child: Row(children: [
                  const Icon(mobileQcUnSelectIcon),
                  const SizedBox(width: 3),
                  Text('QC fail',
                      style: Get.textTheme.bodyText1!.copyWith(fontSize: 12))
                ]),
                onTap: () {})
          ])
        ]),
        actions: <Widget>[
          CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                Get.back();
              },
              child: Text('CANCEL', style: Get.textTheme.headline6!.copyWith(fontSize: 14))),
          CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {},
              child: Text('YES', style: Get.textTheme.headline5!.copyWith(fontSize: 14)))
        ]));
  }
}
