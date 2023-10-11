import 'package:flutter/material.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const CustomElevatedButton(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 34,
              color: Color(0xFFDDDDDD),
              fontWeight: FontWeight.w500,
              fontFamily: "AeonikRegular"),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            minimumSize: Size(290, 60),
            backgroundColor: AppColor.splashTextColor));
  }
}
