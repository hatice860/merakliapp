import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_green_background.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGreenBackground(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                _profileWidget(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ahmet",
                        style: AppTextStyle.aeonikRegular(context).copyWith(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Ahmet Görgülü",
                        style: AppTextStyle.aeonikLight(context).copyWith(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              _iconWidget(onPressed: () {}, icon: Assets.icon.icFacebookSVG),
              _iconWidget(onPressed: () {}, icon: Assets.icon.icInstagramVG),
              _iconWidget(onPressed: () {}, icon: Assets.icon.icTwitterXSVG)
            ],
          )
        ],
      )),
    );
  }

  IconButton _iconWidget({Function()? onPressed, String? icon}) {
    return IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          icon!,
          width: 75,
        ));
  }

  Stack _profileWidget(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              border: Border.all(width: 6, color: const Color(0xFF88B1A1))),
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.transparent,
            child: Image.asset(
              Assets.image.imUserPNG,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              border: Border.all(width: 6, color: const Color(0xFF88B1A1))),
          child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Row(
                children: [
                  Text(
                    "%",
                    style: AppTextStyle.aeonikRegular(context)
                        .copyWith(fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    "69",
                    style: AppTextStyle.aeonikRegular(context).copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
