import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_green_background.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg.dart';

class ProfileQuestionView extends StatelessWidget {
  const ProfileQuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    Color textColor = const Color(0xFFDDDDDD);
    return CustomScaffold (
        body: CustomGreenBackground(
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SvgPicture.asset(Assets.icon.icMenuSVG),
            ),
            trailing: SvgPicture.asset(Assets.icon.icEllipsSVG),
            child: Column(
              children: [
              const  SizedBox(
                  height: 50,
                ),
                Container(
                  color: AppColor.appPurpleColor,
                  height: 62,
                  width: 300,
                  child: Center(
                      child: Text(
                    "Ahmet Görgülü",
                    style: AppTextStyle.aeonikRegular(context).copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Container(
                    color: AppColor.splashTextColor,
                    height: 200,
                    width: 300,
                    child: Center(
                        child: Text(
                      "Söz verdigi zaman duran biri mi?",
                      textAlign: TextAlign.center,
                      style: AppTextStyle.aeonikLight(context).copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w100,
                          color: textColor),
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: AppColor.splashTextColor,
                      height: 95,
                      width: 128,
                      child: Center(
                          child: Text(
                        "Evet",
                        style: AppTextStyle.aeonikLight(context).copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: textColor),
                      )),
                    ),
                    Container(
                      color: AppColor.splashTextColor,
                      height: 95,
                      width: 128,
                      child: Center(
                          child: Text(
                        "Hayır",
                        style: AppTextStyle.aeonikLight(context).copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: textColor),
                      )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 100,
                  height: 45,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                      onPressed: () {},
                      child: Text(
                        "Bitir",
                        style: AppTextStyle.aeonikLight(context)
                            .copyWith(color: textColor),
                      )),
                )
              ],
            )));
  }
}
