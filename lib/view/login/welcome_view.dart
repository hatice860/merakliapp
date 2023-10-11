import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_elevated_button.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:flutter_merakli/view/login/login_view.dart';

void main() {
  runApp(WelcomeView());
}

class WelcomeView extends StatefulWidget {
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  final PageController _pageController = PageController();
  String textWhy =
      "Günümüzde zamanın çok hızlı akması, iletisimin kolaylasması ve çok fazla insanla iletisim kurmamız bize faydalar saglasa da, bazen de riskler barındırıyor. Meraklı bu riskleri en aza indirmeye odaklanmış bir sosyal medya uygulamasıdır.";
  String textWhat =
      "insan duygusal bir varlik oldugu için bazen kesin emin oldugu bir kanida bile unutkan ve pasif davranabilir. Bu anlik bosluklarda dolandırılma, yanlıs tercihler ve kötü neticelerin ilk adimi atilabilir. Sende her an güvende kalmak istersen, merakli tam senin için hazır.";
  int _currentPage = 0; // Aktif sayfa indeksi

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _whyMethod(context),
                _whatMethod(context),
              ],
            ),
            Positioned(
              bottom: 50,
              left: MediaQuery.of(context).size.width * 0.01,
              right: MediaQuery.of(context).size.width * 0.01,
              child: Column(
                children: [
                  _buildPageIndicator(),
                  const SizedBox(
                    height: 35,
                  ),
                  CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginView(),
                            ));
                      },
                      text: "Basla")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _whyMethod(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                AppColor.splashTextColor.withOpacity(0.55),
                AppColor.primaryColor.withOpacity(0.3),
                AppColor.primaryColor.withOpacity(0.3)
              ],
            ),
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                "Meraklı Nedir? ",
                style: AppTextStyle.AeonikBold(context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: Text(
                  textWhy,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.AeonikRegular(context),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Image.asset(Assets.image.imPresentationPNG),
          ],
        ),
      ],
    );
  }

  Stack _whatMethod(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Color.fromARGB(255, 37, 152, 125).withOpacity(0.7),
                AppColor.primaryColor.withOpacity(0.3),
                AppColor.primaryColor.withOpacity(0.3)
              ],
            ),
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                "Neden Kullanmalı? ",
                style: AppTextStyle.AeonikBold(context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: Text(
                  textWhat,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.AeonikRegular(context),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Image.asset(Assets.image.imUndrawPNG),
          ],
        ),
      ],
    );
  }

  Widget _buildPageIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          2, // Toplam sayfa sayısı
          (index) {
            return Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == _currentPage
                    ? AppColor.splashTextColor
                    : AppColor.splashTextColor.withOpacity(0.3),
              ),
            );
          },
        ),
      ),
    );
  }
}
