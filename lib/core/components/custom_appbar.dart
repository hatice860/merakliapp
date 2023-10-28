import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key,
      required this.title,
      this.littleText,
      this.centerTitle = true,
      this.actions});
  final String title;
  final bool? littleText;
  final bool? centerTitle;
  final bool? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        actions == false
            ? Container()
            : Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(Assets.icon.icCloseAppbarSVG),
              )
      ],
      toolbarHeight: 100,
      centerTitle: centerTitle,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(Assets.icon.icBackButtonSVG)),
      ),
      elevation: 0,
      shadowColor: Colors.grey,
      backgroundColor: AppColor.splashTextColor,
      title: Text(
        title,
        style: littleText == null
            ? AppTextStyle.aksharAppbarTitle(context)
            : AppTextStyle.arialText(context)
                .copyWith(fontSize: 21, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class AppPreferedSize {
  Size get preferredSize => const Size.fromHeight(95);
}
