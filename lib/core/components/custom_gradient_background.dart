import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomGradientBackground extends StatelessWidget {
  final Widget? child;
  final Widget? leading;
  const CustomGradientBackground(
      {super.key, this.child,  this.leading});

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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  leading!,
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: SvgPicture.asset(Assets.icon.icEllipsSVG),
                  )
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
