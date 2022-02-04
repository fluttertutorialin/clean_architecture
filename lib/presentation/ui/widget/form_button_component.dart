/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormButtonComponent extends StatelessWidget {
  const FormButtonComponent(
      {Key? key,
      required this.color,
      required this.text,
      required this.onPressed})
      : super(key: key);

  final Color color;
  final Widget text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: color.withOpacity(0.1),
              blurRadius: 40,
              offset: const Offset(0, 15)),
          BoxShadow(
              color: color.withOpacity(0.1),
              blurRadius: 13,
              offset: const Offset(0, 1))
        ]),
        child: MaterialButton(
            elevation: 1,
            onPressed: onPressed,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            color: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: text));
  }
}
