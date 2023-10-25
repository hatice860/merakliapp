import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_green_background.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg.dart';

class SuggestionView extends StatelessWidget {
  const SuggestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomGreenBackground(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SvgPicture.asset(Assets.icon.icMenuSVG),
        ),
        trailing: SvgPicture.asset(Assets.icon.icEllipsSVG),
        child: Column(
          children: [
            Container(
              height: 45,
              width: 250,
              color: AppColor.splashTextColor,
              child: Center(
                  child: Text(
                "Sorro Tavsiye",
                style: AppTextStyle.aeonikRegular(context).copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColor.textWhiteColor),
              )),
            ),
            const SizedBox(
              height: 50,
            ),
            _suggestionCard(context),
            _feedbackText(context),
            _buttons(context),
            _askButton(context)
          ],
        ),
      ),
    );
  }

  Padding _askButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 65,
        width: 175,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: Text(
              "Sor",
              style: AppTextStyle.aeonikLight(context)
                  .copyWith(fontSize: 39, color: AppColor.textWhiteColor),
            )),
      ),
    );
  }

  Card _suggestionCard(BuildContext context) {
    return Card(
      color: const Color(0xFFF5F5F7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: SizedBox(
        height: 364,
        width: 292,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Text(
            'Ahmet görgülü ile ticaret yapmanız size büyük paralar kazandırabilir fakat, her zaman dikkati ve temkinli olmanız sizin için hayat kurtarıcı olabilir. ',
            style: AppTextStyle.aeonikLight(context).copyWith(
                fontWeight: FontWeight.w100,
                fontSize: 24,
                color: const Color(0xFF9296AF)),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Padding _feedbackText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Text(
            "Bu cevap isinize yaradı mı?",
            style: AppTextStyle.aeonikLight(context)
                .copyWith(fontSize: 21, color: const Color(0xFFC0C3D5)),
          ),
          Text(
            "Geri bildirimleriniz bizim için çok degerli",
            style: AppTextStyle.aeonikLight(context)
                .copyWith(fontSize: 15, color: const Color(0xFFC0C3D5)),
          ),
        ],
      ),
    );
  }

  Row _buttons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF5F5F7),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
          child: Text(
            "Evet",
            style: AppTextStyle.aeonikLight(context)
                .copyWith(color: const Color(0xFFC2C5D4)),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF5F5F7),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
          child: Text(
            "Hayır",
            style: AppTextStyle.aeonikLight(context)
                .copyWith(color: const Color(0xFFC2C5D4)),
          ),
        )
      ],
    );
  }
}
