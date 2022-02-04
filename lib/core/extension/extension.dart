import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../theme/color.dart';

/// Use across of the application
extension DynamicUtil on dynamic {
  toast({required String? title, required String? message}) {
    return GetSnackBar(
            titleText: Text(title!.tr,
                style: Get.textTheme.headline3!.copyWith(fontSize: 14, color: whiteColor)),
            messageText: Text(message!.tr,
                style: Get.textTheme.headline4!.copyWith(fontSize: 14, color: whiteColor)),
            snackPosition: SnackPosition.BOTTOM,
            margin: const EdgeInsets.all(20),
            backgroundColor: Get.theme.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            borderRadius: 8,
            reverseAnimationCurve: Curves.easeInOut,
            dismissDirection: DismissDirection.horizontal,
            duration: const Duration(seconds: 3))
        .show();
  }
}

extension ContextExtensions on BuildContext {}

extension InputDecorationExtensions on InputDecoration {}

extension WidgetExtensions on Widget {}

extension VoidExtensions on void {
  showProgress() {}

  void navigationBack() {
    Get.back();
  }
}

extension StringExtensions on String {
  /*String unescapeConvert(String htmlString) {
    var unescape = HtmlUnescape();
    var text = unescape.convert(htmlString);
    return text;
  }*/

  String hourMinuteDateDateFormat() {
    return DateFormat('kk:mm a | dd - MMM')
        .format(DateFormat('dd-MM-yyyy HH:mm').parse(this));
  }

  String hourMinuteDateMonthYearDateFormat() {
    return DateFormat('dd-MMM-yyyy | KK:mm a')
        .format(DateFormat('yyyy-MM-dd HH:mm').parse(this));
  }
}
