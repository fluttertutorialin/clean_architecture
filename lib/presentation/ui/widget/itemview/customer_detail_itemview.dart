import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/assets/icon.dart';

class CustomerDetailItemView extends StatelessWidget {
  final String? inquiryUniqueId,
      dateTime,
      customerName,
      mobileModel,
      mobileBrand,
      address,
      reasonName;

  final bool isReason;

  const CustomerDetailItemView(
      {this.inquiryUniqueId,
      this.dateTime,
      this.customerName,
      this.mobileModel,
      this.mobileBrand,
      this.address,
      this.isReason = false,
      this.reasonName,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          const Icon(roadIcon, size: 15),
          const SizedBox(width: 3.0),
          Text('0', style: context.textTheme.headline3!.copyWith(fontSize: 12))
        ]),
        const SizedBox(width: 5.0),
        Text('10-Dec | 12:10 AM',
            style: Get.textTheme.caption!.copyWith(fontSize: 12))
      ]),
      const SizedBox(height: 5.0),
      Text(inquiryUniqueId!,
          style: context.textTheme.caption!.copyWith(fontSize: 14)),
      const SizedBox(height: 1.0),
      Text(customerName!,
          style: context.textTheme.headline5!.copyWith(fontSize: 14)),
      const SizedBox(height: 1.0),
      Wrap(children: [
        Text('$mobileModel | $mobileBrand',
            style: context.textTheme.bodyText1!.copyWith(fontSize: 14)),
        const SizedBox(width: 10.0),
        Text('00/00',
            style: context.textTheme.bodyText1!.copyWith(fontSize: 14)),
        const SizedBox(width: 10.0),
        Text('Black',
            style: context.textTheme.bodyText1!.copyWith(fontSize: 14)),
      ]),
      const SizedBox(height: 1.0),
      Row(children: [
        Text('Grade',
            style: Get.textTheme.caption!
                .copyWith(fontSize: 14)),
        const SizedBox(width: 5.0),
        Text('A',
            style: Get.textTheme.headline5!
                .copyWith(fontSize: 16))
      ]),
      const SizedBox(height: 5.0),
      Text(address!,
          style: context.textTheme.bodyText1!.copyWith(fontSize: 14)),
      isReason
          ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 5.0),
              Text('reason'.tr,
                  style: context.textTheme.headline6!.copyWith(fontSize: 12)),
              Text(reasonName!,
                  style: context.textTheme.caption!.copyWith(fontSize: 12))
            ])
          : const SizedBox(),
      const Divider()
    ]);
  }
}
