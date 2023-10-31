import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomPopup extends StatefulWidget {
  const CustomPopup({super.key});

  @override
  State<CustomPopup> createState() => _CustomPopupState();
}

class _CustomPopupState extends State<CustomPopup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _showBackDialog(
              context,
              Assets.icon.icMegaphoneAltSVG,
              "Geri gidersen verdigin cevaplar silinecek, gitmek istiyor musun?",
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "EVET",
                      style: AppTextStyle.aeonikRegular(context).copyWith(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFD8C70)),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "HAYIR",
                        style: AppTextStyle.aeonikRegular(context).copyWith(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFFD8C70)),
                      ))
                ],
              ),
            );
          },
          child: const Text("İletişim Kutusu Göster"),
        ),

             ElevatedButton(
          onPressed: () {
            _showBackDialog(
              context,
              Assets.icon.icMegaphoneAltSVG,
              "Geri gidersen verdigin cevaplar silinecek, gitmek istiyor musun?",
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "EVET",
                      style: AppTextStyle.aeonikRegular(context).copyWith(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFD8C70)),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "HAYIR",
                        style: AppTextStyle.aeonikRegular(context).copyWith(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFFD8C70)),
                      ))
                ],
              ),
            );
          },
          child: const Text("İletişim Kutusu Göster"),
        )
      ],
    ));
  }
  

  void _showBackDialog(
      BuildContext context, String icon, String text, Widget actions) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(color: Colors.white.withOpacity(0.8)),
            ),
            AlertDialog(
              icon: SvgPicture.asset(icon),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
              content: Text(
                text,
                style: AppTextStyle.aeonikLight(context)
                    .copyWith(color: AppColor.splashTextColor, fontSize: 28),
                textAlign: TextAlign.center,
              ),
              actions: <Widget>[actions],
            ),
          ],
        );
      },
    );
  }
}
