import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_green_background.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg.dart';

class ProfileYourselfKnow extends StatelessWidget {
  const ProfileYourselfKnow({super.key});

  @override
  Widget build(BuildContext context) {
    final double displaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomGreenBackground(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SvgPicture.asset(Assets.icon.icMenuSVG),
        ),
        trailing: SvgPicture.asset(Assets.icon.icEllipsSVG),
        child: Column(
          children: [
            _yourselfKnowCardWidget(context),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: displaWidth * 0.2,
              width: displaWidth * 0.85,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade100),
                color: const Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 1,
                    offset: const Offset(
                      0,
                      1,
                    ),
                  ),
                ]
                /**/
                ,
              ),
              child: Center(
                  child: Text(
                "Ahmet Görgülü Bugün",
                style: AppTextStyle.aeonikRegular(context).copyWith(
                    color: const Color(0xFFCDD0E2),
                    fontWeight: FontWeight.w700,
                    fontSize: 23),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: displaWidth * 0.9,
              width: displaWidth * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 0,
                      offset: const Offset(0, 14),
                      spreadRadius: 5,
                    ),
                  ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                child: Text(
                  "Günlük egzersizini yapmalısın, sayet İhmal edersen algın zayıflar ve kendini ifade etmekte zorlanabilirsin.",
                  style: AppTextStyle.aeonikRegular(context)
                      .copyWith(color: const Color(0xFFBDBFCC), fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _yourselfKnowCardWidget(BuildContext context) {
    final double displaWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: displaWidth * 0.21,
      width: displaWidth * 0.80,
      child: Card(
        elevation: 5,
        shape: Border.all(width: 1, color: const Color(0xFFBCE0FD)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(" Kendini Tanı",
                  style: AppTextStyle.arialText(context)
                      .copyWith(fontWeight: FontWeight.w400, fontSize: 25)),
              Text("Tıkla kendini Tanı",
                  style: AppTextStyle.arialText(context).copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: const Color(0xFFCCCCCC)))
            ],
          ),
        ),
      ),
    );
  }
}
