import 'package:flutter/material.dart';

class LocaleText extends StatelessWidget {
  const LocaleText({Key? key, required this.value, this.textAlign, this.style})
      : super(
    key: key,
  );
  final String value;
  final TextAlign? textAlign;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: textAlign,
      style: style,
    );
  }
}
