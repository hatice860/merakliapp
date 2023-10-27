import 'package:flutter/Material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_bottom_bar.dart';
import 'package:flutter_merakli/core/components/custom_gradient_background.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradientBackground(
        leading: _pointWidget,
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Text(
              "Kimi Merak Ediyorsun? ",
              style: AppTextStyle.aeonikRegular(context).copyWith(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFD8DAE6)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Ögrenmek istedigin kisiyi\nMeraklıya Sor!",
                  textAlign: TextAlign.start,
                  style: AppTextStyle.aeonikRegular(context)
                      .copyWith(fontSize: 21, color: const Color(0xFFD8DAE6)),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            _searchBar
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }

  Widget get _searchBar => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: SvgPicture.asset(Assets.icon.icSearchSVG),
              ),
              filled: true,
              fillColor: const Color(0xFFF5F5F7),
              hintText: "Örnek: Ahmet Görgülü",
              hintStyle: AppTextStyle.aeonikRegular(context).copyWith(
                  color: const Color(0xFFBCBFD0),
                  fontSize: 16,
                  fontWeight: FontWeight.w100),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide:
                      const BorderSide(width: 3, color: Color(0xFFF5F5F7))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide:
                      const BorderSide(width: 4, color: Color(0xFFF5F5F7)))),
        ),
      );
  Widget get _pointWidget => Container(
        width: 120,
        height: 45,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Puan:",
              style: AppTextStyle.aeonikRegular(context)
                  .copyWith(fontSize: 25, color: const Color(0xFFA6CABC)),
            ),
            Text("10",
                style: AppTextStyle.aeonikRegular(context)
                    .copyWith(fontSize: 30, color: const Color(0xFFA6CABC)))
          ],
        ),
      );
}
