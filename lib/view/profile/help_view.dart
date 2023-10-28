import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_appbar.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HelpView extends StatefulWidget {
  const HelpView({super.key});

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppbar(
        title: "Yardım",
        littleText: true,
        centerTitle: false,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          _helpCenterItem(SvgPicture.asset(Assets.icon.icQuestionSquareSVG),
              "Yardım Merkezi", null),
          _helpCenterItem(SvgPicture.asset(Assets.icon.icUsersAltSVG),
              "Bize ulaşın", "Öneri ve görüşleriniz var mı?"),
          _helpCenterItem(SvgPicture.asset(Assets.icon.icPaperSVG),
              "Gizlilik İlkesi", null),
          _helpCenterItem(SvgPicture.asset(Assets.icon.icExclamationSquareSVG),
              "Uygulama Hakkında", null)
        ],
      ),
    );
  }

  Row _helpCenterItem(Widget icon, String text, String? description) {
    final hasDescription = description != null && description.isNotEmpty;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 21.0, bottom: 25),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: AppTextStyle.arialText(context).copyWith(
                    fontSize: 17,
                    color: const Color(0xFF535353),
                    fontWeight: FontWeight.w400),
              ),
              if (hasDescription)
                Text(
                  description,
                  style: AppTextStyle.arialText(context).copyWith(
                      fontSize: 14,
                      color: const Color(0xFFB5B5B5),
                      fontWeight: FontWeight.w400),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
