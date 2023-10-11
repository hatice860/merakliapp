import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text;
    if (text.length == 3 || text.length == 7) {
      return newValue.copyWith(text: text + '-');
    }
    return newValue;
  }
}
