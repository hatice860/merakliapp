import 'package:flutter/material.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';

class CustomGradientBackground extends StatelessWidget {
  final Widget? child;
  const CustomGradientBackground({super.key, this.child});

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
                AppColor.splashTextColor.withOpacity(0.55),
                AppColor.primaryColor.withOpacity(0.3),
                AppColor.primaryColor.withOpacity(0.3)
              ],
            ),
          ),
        ),
        Column(
          children: [child!],
        )
      ],
    );
  }
}
