import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_appbar.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';
import 'package:flutter_merakli/core/components/custom_textfield.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:flutter_merakli/core/model/text_form_field_model.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProfileSettingsView extends StatefulWidget {
  const ProfileSettingsView({super.key});

  @override
  State<ProfileSettingsView> createState() => _ProfileSettingsViewState();
}

class _ProfileSettingsViewState extends State<ProfileSettingsView> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<TextFormFieldModel> _items = [
      TextFormFieldModel(
        name: "İsim Soyisim",
        text: "isim soyisim",
      ),
      TextFormFieldModel(
          name: "hesap@mail.com", text: "Email", controller: _emailController),
      TextFormFieldModel(name: "09/09/1987", text: "Dogum Tarihi"),
      TextFormFieldModel(
        name: "555 555 55 55",
        text: "Telefon",
      ),
      TextFormFieldModel(
        name: "Erkek",
        text: "Cinsiyet",
      ),
      TextFormFieldModel(name: ".......", text: "Sifre", obscureText: true),
    ];
    return CustomScaffold(
      appBar: const CustomAppbar(
          centerTitle: false, littleText: true, title: "Hesap Ayarları"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            _profileWidget(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    "AYARLAR",
                    style: AppTextStyle.arialText(context)
                        .copyWith(fontSize: 12, color: const Color(0xFF535353)),
                  ),
                ),
              ],
            ),
            ..._items.map((item) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 42.0, vertical: 12),
                  child: CustomTextField(
                      obscureText: item.obscureText ?? false,
                      controller: item.controller,
                      hintText: item.name,
                      hintStyle: AppTextStyle.arialText(context).copyWith(
                          color: const Color(0xFF535353),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: const BorderSide(color: Colors.white)),
                      trailing: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 12),
                        child: Text(
                          item.text,
                          style: AppTextStyle.aeonikRegular(context).copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF535353)),
                        ),
                      )),
                )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 42.0, vertical: 8),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          elevation: 0,
                          backgroundColor: Colors.white),
                      child: Text(
                        "Kaydet",
                        style: AppTextStyle.arialText(context).copyWith(
                            fontSize: 17, color: const Color(0xFF258086)),
                      ))),
            )
          ],
        ),
      ),
    );
  }

  Stack _profileWidget() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0, right: 20),
          child: Container(
            height: 150,
            width: 150,
            color: Colors.white,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(Assets.image.imUnionPNG)),
          ),
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: SvgPicture.asset(Assets.icon.icImageSVG),
            )),
      ],
    );
  }
}
