import 'package:flutter/material.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';
import 'package:flutter_merakli/core/constants/app_textstyle.dart';

class CustomActivityCard extends StatefulWidget {
  const CustomActivityCard({super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  State<CustomActivityCard> createState() => _CustomActivityCardState();
}

class _CustomActivityCardState extends State<CustomActivityCard> {
  final List<Color> _colorList = [
    AppColor.appPurpleColor,
    AppColor.splashTextColor,
    AppColor.splashTextColor,
    AppColor.appPurpleColor
  ];
  int _currentColorIndex = 0;

  @override
  void initState() {
    super.initState();
    _startColorAnimation();
  }

  void _startColorAnimation() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _currentColorIndex = (_currentColorIndex + 1) % _colorList.length;
        _startColorAnimation();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Container(
        decoration: BoxDecoration(color: widget.color),
        child: Center(
            child: Text(
          widget.text, // Metni widget'ın parametresinden al
          style: AppTextStyle.aeonikRegular(context)
              .copyWith(fontWeight: FontWeight.w300, color: Colors.white),
        )),
      ),
    );
  }
}
