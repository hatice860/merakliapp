import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_appbar.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';
import 'package:flutter_merakli/core/components/profile_appbar.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:flutter_merakli/core/model/profile_menu_model.dart';
import 'package:svg_flutter/svg.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final List<ProfileMenuModel> _items = [
      ProfileMenuModel(
          icon: Assets.icon.icYourselfKnowSVG,
          text: "Kendini Tanı",
          description: "Fıtratın hakkında bilgi sahibi ol"),
      ProfileMenuModel(
          icon: Assets.icon.icKeySVG,
          text: "Hesap",
          description: "Hesap ayarları, Şifre işlemleri")
    ];

    return CustomScaffold(
      appBar: PreferredSize(
        preferredSize: AppPreferedSize().preferredSize,
        child: ProfileAppBar(
          title: "Profil",
          trailing: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SvgPicture.asset(Assets.icon.icCloseSVG),
          ),
        ),
      ),
      body: Column(children: [
        _profileCard(context),
        SizedBox(
          height: 300,
          child: ListView(
            children: [
              ..._items
                  .map((item) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              item.icon,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Wrap(
                                direction: Axis.vertical,
                                children: [
                                  Text(
                                    item.text,
                                    style: AppTextStyle.arialText(context)
                                        .copyWith(
                                            color: const Color(0xFF535353),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    item.description,
                                    style: AppTextStyle.arialText(context)
                                        .copyWith(
                                            color: const Color(0xFFB5B5B5),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ],
          ),
        )
      ]),
    );
  }

  Padding _profileCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 27),
      child: Row(
        children: [
          Container(
            height: 79,
            width: 79,
            color: Colors.white,
            child: Image.asset(Assets.image.imUserPNG),
          ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Ahmet Görgülü",
                  style: AppTextStyle.arialText(context).copyWith(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF757575)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Öğrenci",
                  textAlign: TextAlign.start,
                  style: AppTextStyle.arialText(context).copyWith(
                      fontSize: 14,
                      color: const Color(0xFF757575),
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
