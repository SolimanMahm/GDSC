import 'package:code_with_me/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {Key? key, this.hintTaxt, this.onChanged, this.preIcon, this.sufIcon})
      : super(key: key);

  String? hintTaxt;
  Function(String)? onChanged;
  IconData? preIcon, sufIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, left: 43, right: 42),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintTaxt,
          hintStyle: const TextStyle(
            color: AppColor.thirdColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.thirdColor),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.thirdColor),
          ),
          prefixIcon: Icon(preIcon),
          suffixIcon: Icon(sufIcon),
        ),
      ),
    );
  }
}
