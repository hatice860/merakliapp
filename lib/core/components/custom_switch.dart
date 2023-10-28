import 'package:flutter/material.dart';
import 'package:flutter_merakli/core/components/custom_scaffold.dart';

class CustomSwitch extends StatefulWidget {
  final Color? color;
  const CustomSwitch({super.key, required this.color});

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });
      },
      child: Container(
        width: 80.0,
        height: 33.0,
        decoration: BoxDecoration(
          border: _value
              ? const Border()
              : Border.all(width: 1, color: const Color(0xFFAFDCCB)),
          borderRadius: BorderRadius.circular(15.0), // Yuvarlak köşeler
          color: _value
              ? widget.color
              : const Color(0xFFC9C9C9), // Açık ve kapalı renkleri
        ),
        child: Row(
          mainAxisAlignment:
              _value ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              width: 45.0,
              height: 33.0,
              decoration: BoxDecoration(
                  border: _value
                      ? const Border()
                      : Border.all(width: 1, color: const Color(0xFFAFDCCB)),
                  borderRadius: BorderRadius.circular(20),
                  color: _value ? const Color(0xFF258086) : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
