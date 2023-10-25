import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key, required this.title, this.trailing});
  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [trailing ?? Container()],
      toolbarHeight: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(Assets.icon.icLeftArrowSVG)),
      ),
      elevation: 0,
      shadowColor: Colors.grey,
      backgroundColor: AppColor.splashTextColor,
      title: Text(
        title,
        style: AppTextStyle.arialText(context).copyWith(
            fontSize: 21,
            fontWeight: FontWeight.w700,
            color: const Color(0xFFF0F0F0)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
