import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key,
      required this.title,
     
     
     });
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
     
      toolbarHeight: 100,
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
        style: AppTextStyle.aksharAppbarTitle(context),
          
        textAlign: TextAlign.center,
      ),
    );
  }
}

class AppPreferedSize {
  Size get preferredSize => const Size.fromHeight(95);
}
