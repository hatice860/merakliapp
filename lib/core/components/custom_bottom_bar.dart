import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/view/login/login_view.dart';
import 'package:flutter_merakli/view/login/welcome_view.dart';
import 'package:svg_flutter/svg.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _index = 0;
  final List<Widget> _pages = [WelcomeView(), LoginView(), LoginView()];
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        animationCurve: Curves.easeInOutExpo,
        backgroundColor: AppColor.primaryColor.withOpacity(0.3),
        color: const Color(0xFFF0F0F0),
        items: [
          CircleAvatar(
            backgroundColor: const Color(0xFFF0F0F0),
            child: SvgPicture.asset(
              Assets.icon.icOfferSVG,
            ),
          ),
          CircleAvatar(
              backgroundColor: const Color(0xFFF0F0F0),
              child: SvgPicture.asset(Assets.icon.icLogoSVG)),
          CircleAvatar(
              backgroundColor: const Color(0xFFF0F0F0),
              child: SvgPicture.asset(Assets.icon.icUsersSocialSVG))
        ]);
  }
}
