import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_activity_card.dart';
import 'package:flutter_merakli/core/components/custom_bottom_bar.dart';
import 'package:flutter_merakli/core/components/custom_gradient_background.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg.dart';

class ActivityView extends StatefulWidget {
  const ActivityView({super.key});

  @override
  State<ActivityView> createState() => _ActivityViewState();
}

class _ActivityViewState extends State<ActivityView> {
  final List<Color> _colorList = [
    AppColor.appPurpleColor,
    AppColor.splashTextColor,
    AppColor.splashTextColor,
    AppColor.appPurpleColor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(),
      body: CustomGradientBackground(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SvgPicture.asset(Assets.icon.icMenuSVG),
        ),
        child: Column(
          children: [
            Text(
              "Ahmet Görgülü ",
              style: AppTextStyle.aeonikRegular(context).copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: const Color(0xFF3A3D58)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Ne yapmak istiyorsun?",
                style: AppTextStyle.aeonikRegular(context)
                    .copyWith(fontSize: 22, color: const Color(0xFF3A3D58)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: GridView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 18,
                      childAspectRatio: 2.1),
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return CustomActivityCard(
                        color: _colorList[index % _colorList.length]);
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
