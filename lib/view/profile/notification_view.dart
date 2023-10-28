import 'package:flutter/material.dart';
import 'package:flutter_merakli/core/components/custom_appbar.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';
import 'package:flutter_merakli/core/components/custom_switch.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppbar(
        title: "Bildirimler",
        centerTitle: false,
        littleText: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Uygulama içi sesler ",
                  style: AppTextStyle.arialText(context).copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Colors.black),
                ),
                Center(
                  child: CustomSwitch(
                    color: const Color(0xFF258086).withOpacity(0.5),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Uygulama içindeki sesleri açar",
                style: AppTextStyle.arialText(context).copyWith(
                    color: const Color(0xFFB5B5B5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 0.75,
                color: Colors.grey.shade400,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Güncelleme ve yenilikler ",
                      style: AppTextStyle.arialText(context).copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    Center(
                      child: CustomSwitch(
                        color: const Color(0xFF258661).withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34.0),
                  child: Text(
                    "Uygulamayla alakalı bildirimler",
                    style: AppTextStyle.arialText(context).copyWith(
                        color: const Color(0xFFB5B5B5),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
