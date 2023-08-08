import 'package:flutter/material.dart';

enum TextVariant { bold, regular, medium }

enum TextSize { small, body, large, heading }

FontWeight returnVariant(TextVariant? variant) {
  switch (variant) {
    case TextVariant.regular:
      return FontWeight.normal;
    case TextVariant.medium:
      return FontWeight.w500;
    case TextVariant.bold:
      return FontWeight.bold;
    default:
      return FontWeight.normal;
  }
}

double returnSize(TextSize? size) {
  switch (size) {
    case TextSize.body:
      return 16.0;
    case TextSize.large:
      return 20.0;
    case TextSize.small:
      return 12.0;
    case TextSize.heading:
      return 24.0;
    default:
      return 16.0;
  }
}

class UIText extends StatelessWidget {
  final String text;
  final TextVariant? variant;
  final TextSize? size;
  final Color? color;

  const UIText(
      {Key? key, required this.text, this.variant, this.size, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: returnVariant((variant)),
        fontSize: returnSize(size),
      ),
    );
  }
}
