import 'package:flutter/material.dart';
import 'package:flutter_merakli/assets.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';
import 'package:flutter_merakli/core/model/gender_model.dart';
import 'package:svg_flutter/svg.dart';

class CustomDropdownMenu extends StatefulWidget {
  final List<GenderModel> genders = [
    GenderModel("Kadın"),
    GenderModel("Erkek"),
    GenderModel("Cinsiyet")
  ];

  CustomDropdownMenu({super.key});

  @override
  State<CustomDropdownMenu> createState() => _CustomDropdownMenuState();
}

class _CustomDropdownMenuState extends State<CustomDropdownMenu> {
  String dropdownValue = "Cinsiyet";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.33,
          decoration:
              BoxDecoration(border: Border.all(color: const Color(0xFFBCE0FD))),
          child: DropdownButton(
            dropdownColor: const Color(0xFFFFFFFF),
            underline: Container(
              height: 2,
              color: Colors.transparent,
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SvgPicture.asset(Assets.icon.icCaretDownSVG),
            ),
            value: dropdownValue,
            style: AppTextStyle.arialText(context).copyWith(
                color: const Color(0xFF258661),
                fontSize: 20,
                fontWeight: FontWeight.w400),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            elevation: 0,
            items: widget.genders
                .map<DropdownMenuItem<String>>((GenderModel value) {
              return DropdownMenuItem(
                value: value.name,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(value.name),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
