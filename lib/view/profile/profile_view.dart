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
          description: "Hesap ayarları, Şifre işlemleri"),
      ProfileMenuModel(
          icon: Assets.icon.icProfileUserSocialSVG,
          text: "Sosyal Medya Hesaplarım",
          description: "Sosyal medya hesaplarını ekle-sil"),
      ProfileMenuModel(
          icon: Assets.icon.icNotificationSVG,
          text: "Bildirimler",
          description: "Sorro Bildirimler"),
      ProfileMenuModel(
          icon: Assets.icon.icQuestionSquareSVG,
          text: "Yardım",
          description: "Yardım merkezi, bize ulaşın, gizlilik ilkesi"),
      ProfileMenuModel(
          icon: Assets.icon.icNotificationSVG,
          text: "Uygulama Hakkında",
          description: "Sorro Nedir? Nasıl Kullanılır?"),
      ProfileMenuModel(
          icon: Assets.icon.icInfoCircleSVG,
          text: "Çıkış",
          description: "Uygulamadan çıkış yap"),
    ];

    final List<ProfileMenuModel> _friendstems = [
      ProfileMenuModel(
          icon: Assets.icon.icUsersAltSVG,
          text: "Arkadaş davet edin",
          description: "")
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
        _dividerLineWidget(context),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            ..._items.map((item) => _infoTileWidget(item, context)).toList(),
            const SizedBox(
              height: 55,
            ),
            _dividerLineWidget(context)
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ..._friendstems.map((item) => _infoTileWidget(item, context))
      ]),
    );
  }

  Padding _infoTileWidget(ProfileMenuModel item, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 30,
            child: SvgPicture.asset(
              item.icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.text,
                  style: AppTextStyle.arialText(context).copyWith(
                      color: const Color(0xFF535353),
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  item.description,
                  style: AppTextStyle.arialText(context).copyWith(
                      color: const Color(0xFFB5B5B5),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _dividerLineWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 0.75,
      color: Colors.grey.shade400,
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
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
