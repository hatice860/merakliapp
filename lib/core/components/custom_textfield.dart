import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;

  final TextEditingController? controller;
  final Function()? onTap;
  final String? hintText;
  final Widget? leading;
  final Widget? trailing;
  final Widget? suffix;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  CustomTextField(
      {this.obscureText = false,
      this.controller,
      this.onTap,
      this.hintText,
      this.leading,
      this.trailing,
      this.suffix,
      this.enabledBorder,
      this.hintStyle,
      this.inputFormatters,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: Colors.black,
      onTap: onTap,
      obscureText: obscureText,
      decoration: InputDecoration(
          fillColor: Color(0xFFFFFFFF),
          suffix: suffix,
          prefixIcon: leading,
          suffixIcon: trailing,
          errorBorder: errorBorder(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: AppColor.splashTextColor)),
          contentPadding: EdgeInsets.all(8),
          hintText: hintText,
          hintStyle: hintStyle,
          focusColor: Colors.black,
          enabledBorder: enabledBorder),
    );
  }

  OutlineInputBorder errorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.red, width: 0.1),
    );
  }
}
