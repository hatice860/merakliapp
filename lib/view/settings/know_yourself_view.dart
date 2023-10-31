import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/components/custom_appbar.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';
import 'package:flutter_merakli/core/components/profile_appbar.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:svg_flutter/svg_flutter.dart';

class KnowYourselfView extends StatelessWidget {
  const KnowYourselfView({super.key});

  @override
  Widget build(BuildContext context) {
    String text =
        "Hayatın tadını çıkarmanın anahtarı, anın tadını çıkarmaktır. Her günün bir hediye olduğunu hatırlamak, güzel anıları toplamak ve geleceğe umutla bakmak, yaşamın anlamını artırır. Zorluklarla karşılaşsak bile, bu deneyimler bizi güçlendirir ve büyümeye yardımcı olur. Yaşamın güzellikleri etrafımızdadır; sadece bakmayı ve takdir etmeyi öğrenmek gerekir. Sevdiklerinizle zaman geçirin, yeni maceralara atılın, hayallerinizi takip edin ve her anın kıymetini bilin. Unutmayın, yaşamak bir ayrıcalıktır ve her gün yeni bir fırsattır!";
    List<String> sentence = text.split(". ");
    String editText =
        "${sentence[0]}. ${sentence[1]}\n\n${sentence.sublist(2).join(". ")}";
    return CustomScaffold(
      appBar: const ProfileAppBar(
        title: "Kendini Tanı",
       
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "İFADE ETME, ANLATMA, YAŞAMA SEVİNCİ".toUpperCase(),
              style: AppTextStyle.arialText(context).copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF535353)),
            ),
          ),
          Text(
            editText,
            style: AppTextStyle.arialText(context).copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF535353)),
          )
        ],
      ),
    );
  }
}
