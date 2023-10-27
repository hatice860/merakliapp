class TextFormFieldModel {
  final bool? obscureText;
  final dynamic controller;
  final String name;
  final String text;
  TextFormFieldModel({
    this.obscureText,
    this.controller,
    required this.name,
    required this.text,
  });
}
