/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TextFieldSearchComponent extends StatelessWidget {
  final String labelText;
  final String? initialValue;
  final Widget? prefixIcon, suffixIcon;
  final TextInputType keyboardType;
  //final FormFieldValidator<String?>? validator;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged, onSaved;
  final int? maxLength, maxLines;
  final int minLines;
  final bool readOnly, addHint, enabled;
  final Function()? onTap;
  final AutovalidateMode autoValidateMode;
  final BoxConstraints? suffixIconConstraints;
  final bool obscureText;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

  const TextFieldSearchComponent(
      {Key? key,
      required this.labelText,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.onChanged,
      this.onSaved,
      this.maxLength,
      this.maxLines = 1,
      this.minLines = 1,
      this.textInputAction,
      this.initialValue,
      this.readOnly = false,
      this.focusNode,
      this.onTap,
      this.enabled = true,
      this.autoValidateMode = AutovalidateMode.onUserInteraction,
      this.addHint = false,
      this.suffixIconConstraints,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 40,
    child: TextFormField(
        onTap: onTap,
        focusNode: focusNode,
        readOnly: readOnly,
        initialValue: initialValue,
        keyboardType: keyboardType,
        autovalidateMode: autoValidateMode,
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        minLines: minLines,
        maxLines: maxLines,
        onSaved: onSaved,
        textInputAction: textInputAction,
        enabled: enabled,
        obscureText: obscureText,
        inputFormatters: maxLength == null
            ? null
            : [
                LengthLimitingTextInputFormatter(maxLength),
                if (keyboardType == TextInputType.number)
                  FilteringTextInputFormatter.digitsOnly
              ],
        style: Get.textTheme.bodyText1!.copyWith(fontSize: 13),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: const BorderSide(
                    color: Colors.grey)),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(40.0),
                    borderSide: const BorderSide(
                    color: Colors.grey)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: const BorderSide(
                    color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: const BorderSide(
                    color: Colors.grey)),
            hintText: labelText,
            hintStyle:
                Get.textTheme.headline4!.merge(const TextStyle(fontSize: 13, color: Colors.grey)),
            prefixIconConstraints:
                const BoxConstraints(maxHeight: 25, maxWidth: 51),
            prefixIcon: prefixIcon == null
                ? null
                : SizedBox(width: 30, child: prefixIcon),
            suffixIcon: suffixIcon == null
                ? null
                : SizedBox(width: 30, child: suffixIcon),
            suffixIconConstraints: suffixIconConstraints ??
                const BoxConstraints(maxHeight: 16, maxWidth: 51))));
  }
}
