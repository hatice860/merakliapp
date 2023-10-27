import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:flutter_merakli/view/login/welcome_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset(Assets.image.imSplashPNG)),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Meraklı\n", style: AppTextStyle.aksharSemiBold(context)),
                  TextSpan(
                    text: "neyi merak ediyorsun?",
                    style: AppTextStyle.regular30(context),
                  ),
                ]),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Meraklı V. 0.01\nAlpha Version",
                style: TextStyle(color: AppColor.textGrey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
