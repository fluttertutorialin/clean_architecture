/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/theme/color.dart';
import '../widget/itemview/customer_detail_itemview.dart';
import '../widget/option_widget.dart';
import '../../controller/controller.dart';

class ReturnPage extends GetView<PickUpController> {
  ReturnPage({Key? key}) : super(key: key);

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
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context)),
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
                                        address: '4th Floor/A-WING, SHASHWAT BUSINESS PARK, Rakhial Rd, opp. SOMA TEXTILE, Ahmedabad, Gujarat 380023'),
                                    OptionWidget(
                                        mobile: '9586331823',
                                        address: 'Address',
                                        postponeButtonText:
                                            ' Postpone ',
                                        doneButtonText: ' Done ',
                                        doneOnClick: () {
                                         },
                                        postponeOnClick: () {},
                                        cancelOnClick: () {})
                                  ]))));
                }, childCount: 10))
              ]);
            })));
  }
}
