import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomGreenBackground extends StatelessWidget {
  const CustomGreenBackground(
      {super.key, this.child, this.leading, this.trailing});
  final Widget? child;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                const Color.fromARGB(255, 37, 152, 125).withOpacity(0.7),
                AppColor.primaryColor.withOpacity(0.3),
                AppColor.primaryColor.withOpacity(0.3)
              ],
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Container(child: leading),
                  const Spacer(),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: trailing)
                ],
              ),
            ),
            child!
          ],
        )
      ],
    );
  }
}
